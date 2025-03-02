-- CreateTable
CREATE TABLE "TreeNode" (
    "id" TEXT NOT NULL,
    "key" TEXT NOT NULL,
    "label" TEXT NOT NULL,
    "icon" TEXT DEFAULT 'folder',
    "parentId" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TreeNode_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "TreeNode_key_key" ON "TreeNode"("key");

-- AddForeignKey
ALTER TABLE "TreeNode" ADD CONSTRAINT "TreeNode_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "TreeNode"("id") ON DELETE CASCADE ON UPDATE CASCADE;

