.class Lcom/android/server/am/ActivityManagerService$27;
.super Landroid/os/IRemoteCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCount:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$N:I

.field final synthetic val$newUserId:I

.field final synthetic val$oldUserId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/UserState;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$N"    # I
    .param p3, "val$uss"    # Lcom/android/server/am/UserState;
    .param p4, "val$oldUserId"    # I
    .param p5, "val$newUserId"    # I

    .prologue
    .line 20626
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$27;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$27;->val$N:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$uss:Lcom/android/server/am/UserState;

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$27;->val$oldUserId:I

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$27;->val$newUserId:I

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 20627
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$27;->mCount:I

    .line 20626
    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20630
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$27;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 20631
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$27;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurUserSwitchCallback:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 20632
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$27;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$27;->mCount:I

    .line 20633
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$27;->mCount:I

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$27;->val$N:I

    if-ne v0, v2, :cond_0

    .line 20634
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$27;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$27;->val$uss:Lcom/android/server/am/UserState;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$27;->val$oldUserId:I

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$27;->val$newUserId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 20629
    return-void

    .line 20630
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
