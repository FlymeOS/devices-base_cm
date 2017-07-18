.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPriority(III)I
    .locals 6
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "prio"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3f5

    if-ne v2, v3, :cond_0

    if-ge p3, v5, :cond_1

    .line 50
    :cond_0
    return v4

    .line 49
    :cond_1
    if-gt p3, v1, :cond_0

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 54
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 55
    const/4 v1, 0x4

    .line 54
    :cond_2
    invoke-static {p2, v1}, Landroid/os/Process;->setThreadGroup(II)V

    .line 57
    const/4 v1, 0x1

    invoke-static {p2, v1, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v1, 0x0

    return v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/RuntimeException;
    return v4
.end method
