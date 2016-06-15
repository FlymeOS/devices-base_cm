.class Lcom/android/internal/app/AlertControllerExt$3;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertControllerExt;->setupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertControllerExt;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertControllerExt;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt$3;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$3;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->access$200(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 816
    .local v0, "msgLineCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$3;->this$0:Lcom/android/internal/app/AlertControllerExt;

    # getter for: Lcom/android/internal/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/app/AlertControllerExt;->access$200(Lcom/android/internal/app/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 819
    :cond_0
    return-void
.end method
