.class Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;
.super Ljava/lang/Object;
.source "MzActionBarContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdentifyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarContainer;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;Lcom/android/internal/widget/MzActionBarContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p2, "x1"    # Lcom/android/internal/widget/MzActionBarContainer$1;

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 651
    monitor-enter p0

    .line 654
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$100(Lcom/android/internal/widget/MzActionBarContainer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackgroundColor:I
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$300(Lcom/android/internal/widget/MzActionBarContainer;)I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    iget-boolean v2, v2, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    :goto_0
    return-void

    .line 656
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$700(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    # invokes: Lcom/android/internal/widget/MzActionBarContainer;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$1400(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 657
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # invokes: Lcom/android/internal/widget/MzActionBarContainer;->checkBackgroundColor(Landroid/graphics/Bitmap;)I
    invoke-static {v3, v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$1500(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/Bitmap;)I

    move-result v3

    # setter for: Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackgroundColor:I
    invoke-static {v2, v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$302(Lcom/android/internal/widget/MzActionBarContainer;I)I

    .line 663
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mIdentifyHandle:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$1600(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 659
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mBackgroundColor:I
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$200(Lcom/android/internal/widget/MzActionBarContainer;)I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    iget-boolean v2, v2, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_4

    :cond_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 660
    :cond_4
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$800(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    # invokes: Lcom/android/internal/widget/MzActionBarContainer;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$1400(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 661
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$IdentifyThread;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # invokes: Lcom/android/internal/widget/MzActionBarContainer;->checkBackgroundColor(Landroid/graphics/Bitmap;)I
    invoke-static {v3, v0}, Lcom/android/internal/widget/MzActionBarContainer;->access$1500(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/Bitmap;)I

    move-result v3

    # setter for: Lcom/android/internal/widget/MzActionBarContainer;->mBackgroundColor:I
    invoke-static {v2, v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$202(Lcom/android/internal/widget/MzActionBarContainer;I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 664
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v2, "MzActionBarContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " fail to identify the color of backButton, caused by:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method
