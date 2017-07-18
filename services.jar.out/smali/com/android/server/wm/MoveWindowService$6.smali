.class Lcom/android/server/wm/MoveWindowService$6;
.super Ljava/lang/Object;
.source "MoveWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MoveWindowService;->notifyMoveWinClientLockedMoveWin(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MoveWindowService;

.field final synthetic val$data:I

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/MoveWindowService;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/MoveWindowService;
    .param p2, "val$msg"    # I
    .param p3, "val$data"    # I

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/server/wm/MoveWindowService$6;->this$0:Lcom/android/server/wm/MoveWindowService;

    iput p2, p0, Lcom/android/server/wm/MoveWindowService$6;->val$msg:I

    iput p3, p0, Lcom/android/server/wm/MoveWindowService$6;->val$data:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MoveWindowService$6;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v1, v1, Lcom/android/server/wm/MoveWindowService;->mMWCb:Lmeizu/view/IMoveWinCallback;

    iget v2, p0, Lcom/android/server/wm/MoveWindowService$6;->val$msg:I

    iget v3, p0, Lcom/android/server/wm/MoveWindowService$6;->val$data:I

    invoke-interface {v1, v2, v3}, Lmeizu/view/IMoveWinCallback;->notifyClient(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
