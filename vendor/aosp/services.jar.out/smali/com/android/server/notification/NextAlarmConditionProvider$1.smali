.class Lcom/android/server/notification/NextAlarmConditionProvider$1;
.super Ljava/lang/Object;
.source "NextAlarmConditionProvider.java"

# interfaces
.implements Lcom/android/server/notification/NextAlarmTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NextAlarmConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NextAlarmConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NextAlarmConditionProvider;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/server/notification/NextAlarmConditionProvider$1;->this$0:Lcom/android/server/notification/NextAlarmConditionProvider;

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
    .line 221
    iget-object v0, p0, Lcom/android/server/notification/NextAlarmConditionProvider$1;->this$0:Lcom/android/server/notification/NextAlarmConditionProvider;

    # invokes: Lcom/android/server/notification/NextAlarmConditionProvider;->onEvaluate(Landroid/app/AlarmManager$AlarmClockInfo;JZ)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/notification/NextAlarmConditionProvider;->access$000(Lcom/android/server/notification/NextAlarmConditionProvider;Landroid/app/AlarmManager$AlarmClockInfo;JZ)V

    .line 222
    return-void
.end method
