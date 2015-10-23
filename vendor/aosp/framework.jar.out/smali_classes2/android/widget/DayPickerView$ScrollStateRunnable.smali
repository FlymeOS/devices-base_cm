.class public Landroid/widget/DayPickerView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mParent:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerView;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 316
    iput-object p1, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p2, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mParent:Landroid/view/View;

    .line 318
    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 328
    iget-object v0, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 329
    iput p2, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    .line 330
    iget-object v0, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mParent:Landroid/view/View;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0xfa

    const/4 v6, 0x1

    .line 335
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    iget v9, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/DayPickerView;->mCurrentScrollState:I
    invoke-static {v8, v9}, Landroid/widget/DayPickerView;->access$002(Landroid/widget/DayPickerView;I)I

    .line 336
    const-string v8, "DayPickerView"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 337
    const-string v8, "DayPickerView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new scroll state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " old state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mPreviousScrollState:I
    invoke-static {v10}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    iget v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    if-nez v8, :cond_6

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mPreviousScrollState:I
    invoke-static {v8}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mPreviousScrollState:I
    invoke-static {v8}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)I

    move-result v8

    if-eq v8, v6, :cond_6

    .line 344
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    iget v9, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/DayPickerView;->mPreviousScrollState:I
    invoke-static {v8, v9}, Landroid/widget/DayPickerView;->access$102(Landroid/widget/DayPickerView;I)I

    .line 345
    const/4 v3, 0x0

    .line 346
    .local v3, "i":I
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8, v3}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 347
    .local v1, "child":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    if-gtz v8, :cond_1

    .line 348
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v3}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 350
    :cond_1
    if-nez v1, :cond_3

    .line 370
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 354
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_3
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8}, Landroid/widget/DayPickerView;->getFirstVisiblePosition()I

    move-result v2

    .line 355
    .local v2, "firstPosition":I
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8}, Landroid/widget/DayPickerView;->getLastVisiblePosition()I

    move-result v4

    .line 356
    .local v4, "lastPosition":I
    if-eqz v2, :cond_4

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8}, Landroid/widget/DayPickerView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v4, v8, :cond_4

    .line 357
    .local v6, "scroll":Z
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 358
    .local v7, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 359
    .local v0, "bottom":I
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8}, Landroid/widget/DayPickerView;->getHeight()I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    .line 360
    .local v5, "midpoint":I
    if-eqz v6, :cond_2

    const/4 v8, -0x1

    if-ge v7, v8, :cond_2

    .line 361
    if-le v0, v5, :cond_5

    .line 362
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8, v7, v11}, Landroid/widget/DayPickerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 356
    .end local v0    # "bottom":I
    .end local v5    # "midpoint":I
    .end local v6    # "scroll":Z
    .end local v7    # "top":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 364
    .restart local v0    # "bottom":I
    .restart local v5    # "midpoint":I
    .restart local v6    # "scroll":Z
    .restart local v7    # "top":I
    :cond_5
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8, v0, v11}, Landroid/widget/DayPickerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 368
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "firstPosition":I
    .end local v3    # "i":I
    .end local v4    # "lastPosition":I
    .end local v5    # "midpoint":I
    .end local v6    # "scroll":Z
    .end local v7    # "top":I
    :cond_6
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    iget v9, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/DayPickerView;->mPreviousScrollState:I
    invoke-static {v8, v9}, Landroid/widget/DayPickerView;->access$102(Landroid/widget/DayPickerView;I)I

    goto :goto_1
.end method
