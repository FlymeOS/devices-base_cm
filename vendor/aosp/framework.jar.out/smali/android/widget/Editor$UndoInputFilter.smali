.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation


# instance fields
.field final mEditor:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 4179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4180
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 4181
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4190
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 4191
    .local v2, "um":Landroid/content/UndoManager;
    invoke-virtual {v2}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4256
    :goto_0
    return-object v6

    .line 4196
    :cond_0
    const-string v3, "Edit text"

    invoke-virtual {v2, v3}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 4197
    const-class v3, Landroid/widget/Editor$TextModifyOperation;

    iget-object v4, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$TextModifyOperation;

    .line 4199
    .local v0, "op":Landroid/widget/Editor$TextModifyOperation;
    if-eqz v0, :cond_6

    .line 4203
    iget-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    .line 4207
    if-ge p2, p3, :cond_5

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    if-lt p5, v3, :cond_1

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-le p6, v3, :cond_2

    :cond_1
    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-ne p5, v3, :cond_5

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-ne p6, v3, :cond_5

    .line 4209
    :cond_2
    sub-int v3, p3, p2

    add-int/2addr v3, p5

    iput v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 4210
    invoke-virtual {v2}, Landroid/content/UndoManager;->endUpdate()V

    goto :goto_0

    .line 4217
    :cond_3
    if-ne p2, p3, :cond_5

    iget v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    add-int/lit8 v3, v3, -0x1

    if-ne p6, v3, :cond_5

    .line 4219
    iget-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/SpannableString;

    if-eqz v3, :cond_4

    .line 4220
    iget-object v1, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 4224
    .local v1, "str":Landroid/text/SpannableStringBuilder;
    :goto_1
    invoke-virtual {v1, v7, p4, p5, p6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 4225
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    .line 4226
    iput-object v1, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    .line 4227
    invoke-virtual {v2}, Landroid/content/UndoManager;->endUpdate()V

    goto :goto_0

    .line 4222
    .end local v1    # "str":Landroid/text/SpannableStringBuilder;
    :cond_4
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "str":Landroid/text/SpannableStringBuilder;
    goto :goto_1

    .line 4237
    .end local v1    # "str":Landroid/text/SpannableStringBuilder;
    :cond_5
    invoke-virtual {v2, v6}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 4238
    const-string v3, "Edit text"

    invoke-virtual {v2, v3}, Landroid/content/UndoManager;->setUndoLabel(Ljava/lang/CharSequence;)V

    .line 4242
    :cond_6
    new-instance v0, Landroid/widget/Editor$TextModifyOperation;

    .end local v0    # "op":Landroid/widget/Editor$TextModifyOperation;
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    invoke-direct {v0, v3}, Landroid/widget/Editor$TextModifyOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 4243
    .restart local v0    # "op":Landroid/widget/Editor$TextModifyOperation;
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    .line 4244
    if-ge p2, p3, :cond_8

    .line 4245
    sub-int v3, p3, p2

    add-int/2addr v3, p5

    iput v3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 4249
    :goto_2
    if-ge p5, p6, :cond_7

    .line 4250
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    .line 4254
    :cond_7
    invoke-virtual {v2, v0, v7}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 4255
    invoke-virtual {v2}, Landroid/content/UndoManager;->endUpdate()V

    goto/16 :goto_0

    .line 4247
    :cond_8
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    goto :goto_2
.end method
