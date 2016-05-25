.class Lcom/android/server/usage/UserUsageStatsService$4;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;

.field final synthetic val$pw:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-object p2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$pw:Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkin(Lcom/android/server/usage/IntervalStats;)Z
    .locals 3
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService$4;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$pw:Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;Z)V

    .line 456
    const/4 v0, 0x1

    return v0
.end method
