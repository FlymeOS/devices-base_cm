.class public abstract Landroid/view/FrameStats;
.super Ljava/lang/Object;
.source "FrameStats.java"


# static fields
.field public static final UNDEFINED_TIME_NANO:J = -0x1L


# instance fields
.field protected mFramesPresentedTimeNano:[J

.field protected mRefreshPeriodNano:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEndTimeNano()J
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 82
    const-wide/16 v0, -0x1

    .line 84
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    iget-object v1, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method public final getFrameCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFramePresentedTimeNano(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 95
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final getRefreshPeriodNano()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Landroid/view/FrameStats;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method public final getStartTimeNano()J
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/view/FrameStats;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 67
    const-wide/16 v0, -0x1

    .line 69
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/view/FrameStats;->mFramesPresentedTimeNano:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    goto :goto_0
.end method
