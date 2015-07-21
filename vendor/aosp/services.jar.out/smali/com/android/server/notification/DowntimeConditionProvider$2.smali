.class Lcom/android/server/notification/DowntimeConditionProvider$2;
.super Ljava/lang/Object;
.source "DowntimeConditionProvider.java"

# interfaces
.implements Lcom/android/server/notification/NextAlarmTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/DowntimeConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/DowntimeConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider$2;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvaluate(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    .locals 2
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "wakeupTime"    # J
    .param p4, "booted"    # Z

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider$2;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->onEvaluateNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/notification/DowntimeConditionProvider;->access$900(Lcom/android/server/notification/DowntimeConditionProvider;Landroid/app/AlarmManager$AlarmClockInfo;JZ)V

    .line 365
    return-void
.end method
