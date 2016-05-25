.class Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;
.super Ljava/lang/Object;
.source "DowntimeConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/DowntimeConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FiredAlarms"
.end annotation


# instance fields
.field private final mFiredAlarms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/notification/DowntimeConditionProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 1

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/DowntimeConditionProvider;Lcom/android/server/notification/DowntimeConditionProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;
    .param p2, "x1"    # Lcom/android/server/notification/DowntimeConditionProvider$1;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;-><init>(Lcom/android/server/notification/DowntimeConditionProvider;)V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "firedAlarm"    # J

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 398
    return-void
.end method

.method public findBefore(J)Z
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_0

    .line 403
    const/4 v1, 0x1

    .line 406
    :goto_1
    return v1

    .line 401
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 386
    if-lez v0, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mTracker:Lcom/android/server/notification/NextAlarmTracker;
    invoke-static {v2}, Lcom/android/server/notification/DowntimeConditionProvider;->access$1200(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/NextAlarmTracker;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->mFiredAlarms:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/NextAlarmTracker;->formatAlarmDebug(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
