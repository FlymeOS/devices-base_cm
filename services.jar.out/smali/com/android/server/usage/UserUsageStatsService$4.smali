.class Lcom/android/server/usage/UserUsageStatsService$4;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->refreshAppIdleRollingWindow(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
        "<",
        "Lcom/android/server/usage/IntervalStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;

.field final synthetic val$deviceUsageTime:J


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p2, "val$deviceUsageTime"    # J

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$deviceUsageTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .locals 4
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "mutable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/usage/IntervalStats;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/usage/IntervalStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p3, "accumulatedResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/usage/IntervalStats;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 600
    .local v0, "accum":Lcom/android/server/usage/IntervalStats;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v2, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 601
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :goto_0
    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$deviceUsageTime:J

    invoke-static {v0, p1, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->-wrap0(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;J)V

    .line 596
    return-void

    .line 603
    .end local v0    # "accum":Lcom/android/server/usage/IntervalStats;
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/IntervalStats;

    .restart local v0    # "accum":Lcom/android/server/usage/IntervalStats;
    goto :goto_0
.end method
