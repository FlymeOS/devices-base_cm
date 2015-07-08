.class Lcom/android/internal/widget/MzActionBarContainer$1;
.super Landroid/os/Handler;
.source "MzActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer$1;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$1;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mOnAfterIdentifyBackgroundListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$000(Lcom/android/internal/widget/MzActionBarContainer;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$1;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mOnAfterIdentifyBackgroundListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$000(Lcom/android/internal/widget/MzActionBarContainer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$1;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mOnAfterIdentifyBackgroundListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$000(Lcom/android/internal/widget/MzActionBarContainer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 85
    .local v0, "copyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 86
    .local v2, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer$1;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mIsSplit:Z
    invoke-static {v4}, Lcom/android/internal/widget/MzActionBarContainer;->access$100(Lcom/android/internal/widget/MzActionBarContainer;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MzActionBarContainer$1;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mBackgroundColor:I
    invoke-static {v5}, Lcom/android/internal/widget/MzActionBarContainer;->access$200(Lcom/android/internal/widget/MzActionBarContainer;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/MzActionBarContainer$1;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mSplitBackgroundColor:I
    invoke-static {v6}, Lcom/android/internal/widget/MzActionBarContainer;->access$300(Lcom/android/internal/widget/MzActionBarContainer;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;->onAfterIdentifyBackground(ZII)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "copyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;>;"
    .end local v1    # "i":I
    .end local v2    # "numListeners":I
    :cond_0
    return-void
.end method
