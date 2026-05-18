-- Database Schema for Supabase Integration
-- Table: public.books

-- 1. Create the books table
CREATE TABLE IF NOT EXISTS public.books (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- 2. Enable Row Level Security (RLS)
ALTER TABLE public.books ENABLE ROW LEVEL SECURITY;

-- 3. Define RLS Policies for secure per-user operations

-- Policy: Select policy (Users can only view their own books)
CREATE POLICY "Users can view their own books" 
ON public.books 
FOR SELECT 
USING (auth.uid() = user_id);

-- Policy: Insert policy (Users can only insert books for themselves)
CREATE POLICY "Users can insert books for themselves" 
ON public.books 
FOR INSERT 
WITH CHECK (auth.uid() = user_id);

-- Policy: Update policy (Users can only update their own books)
CREATE POLICY "Users can update their own books" 
ON public.books 
FOR UPDATE 
USING (auth.uid() = user_id)
WITH CHECK (auth.uid() = user_id);

-- Policy: Delete policy (Users can only delete their own books)
CREATE POLICY "Users can delete their own books" 
ON public.books 
FOR DELETE 
USING (auth.uid() = user_id);

-- 4. Create performance indexes
CREATE INDEX IF NOT EXISTS books_user_id_idx ON public.books(user_id);
