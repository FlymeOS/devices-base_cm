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
    .locals 3

    .prologue
    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$6;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v0, v0, Lcom/android/server/wm/MoveWindowService;->mMWCb:Lmeizu/view/IMoveWinCallback;

    iget v1, p0, Lcom/android/server/wm/MoveWindowService$6;->val$msg:I

    iget v2, p0, Lcom/android/server/wm/MoveWindowService$6;->val$data:I

    invoke-interface {v0, v1, v2}, Lmeizu/view/IMoveWinCallback;->notifyClient(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0
.end method
