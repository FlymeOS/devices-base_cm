.class public Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
.super Ljava/lang/Object;
.source "DcRetryAlarmController.java"


# static fields
.field private static final DBG:Z = true

.field private static final INTENT_RETRY_ALARM_TAG:Ljava/lang/String; = "tag"

.field private static final INTENT_RETRY_ALARM_WHAT:Ljava/lang/String; = "what"


# instance fields
.field private mActionRetry:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLogTag:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v1, "DcRac"

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mLogTag:Ljava/lang/String;

    .line 48
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mLogTag:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".action_retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcRetryAlarmController: register for intent action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dcRac] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 99
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    .line 102
    return-void
.end method

.method getSuggestedRetryTime(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)I
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 115
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 116
    .local v0, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 117
    .local v1, "retryDelay":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 118
    const-string v2, "getSuggestedRetryTime: suggestedRetryTime is MAX_INT, retry NOT needed"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    .line 119
    const/4 v1, -0x1

    .line 134
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSuggestedRetryTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    .line 136
    return v1

    .line 120
    :cond_0
    if-ltz v1, :cond_1

    .line 121
    const-string v2, "getSuggestedRetryTime: suggestedRetryTime is >= 0 use it"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v1

    .line 124
    if-gez v1, :cond_2

    .line 125
    const/4 v1, 0x0

    .line 127
    :cond_2
    const-string v2, "getSuggestedRetryTime: retry is needed"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_3
    const-string v2, "getSuggestedRetryTime: retry is NOT needed"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    .line 130
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public startRetryAlarm(III)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "tag"    # I
    .param p3, "delay"    # I

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "what"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v2, "tag"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRetryAlarm: next attempt in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 151
    .local v1, "retryIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p3

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [dcRac] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, " mAlaramManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, " mActionRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
