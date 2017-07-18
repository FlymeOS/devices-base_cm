.class Lcom/android/server/AlarmManagerService$CheckBlockedUidTimerTask;
.super Ljava/util/TimerTask;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBlockedUidTimerTask"
.end annotation


# instance fields
.field private mUid:I

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "uid"    # I

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$CheckBlockedUidTimerTask;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1269
    iput p2, p0, Lcom/android/server/AlarmManagerService$CheckBlockedUidTimerTask;->mUid:I

    .line 1268
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$CheckBlockedUidTimerTask;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->-get0(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/server/AlarmManagerService$CheckBlockedUidTimerTask;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$CheckBlockedUidTimerTask;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->-get1(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/server/AlarmManagerService$CheckBlockedUidTimerTask;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$CheckBlockedUidTimerTask;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$CheckBlockedUidTimerTask;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1278
    return-void

    .line 1281
    :cond_0
    return-void
.end method
