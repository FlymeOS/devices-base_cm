.class Lcom/android/server/NetworkManagementService$4;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;

.field final synthetic val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "val$params"    # Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$4;->this$0:Lcom/android/server/NetworkManagementService;

    iput-object p2, p0, Lcom/android/server/NetworkManagementService$4;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1661
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$4;->this$0:Lcom/android/server/NetworkManagementService;

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$4;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    iget v2, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 1662
    sget v3, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    .line 1663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 1661
    invoke-static/range {v1 .. v6}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;IIJZ)V

    .line 1660
    return-void
.end method
