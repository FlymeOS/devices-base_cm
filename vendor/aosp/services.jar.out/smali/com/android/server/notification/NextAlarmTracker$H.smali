.class Lcom/android/server/notification/NextAlarmTracker$H;
.super Landroid/os/Handler;
.source "NextAlarmTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NextAlarmTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final MSG_EVALUATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NextAlarmTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NextAlarmTracker;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/server/notification/NextAlarmTracker$H;->this$0:Lcom/android/server/notification/NextAlarmTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NextAlarmTracker;Lcom/android/server/notification/NextAlarmTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/NextAlarmTracker;
    .param p2, "x1"    # Lcom/android/server/notification/NextAlarmTracker$1;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/notification/NextAlarmTracker$H;-><init>(Lcom/android/server/notification/NextAlarmTracker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmTracker$H;->this$0:Lcom/android/server/notification/NextAlarmTracker;

    # invokes: Lcom/android/server/notification/NextAlarmTracker;->handleEvaluate()V
    invoke-static {v0}, Lcom/android/server/notification/NextAlarmTracker;->access$700(Lcom/android/server/notification/NextAlarmTracker;)V

    .line 257
    :cond_0
    return-void
.end method

.method public postEvaluate(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NextAlarmTracker$H;->removeMessages(I)V

    .line 249
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/notification/NextAlarmTracker$H;->sendEmptyMessageDelayed(IJ)Z

    .line 250
    return-void
.end method
