.class Lcom/android/internal/app/MzResolverActivity$ResolverComparator;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolverComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/internal/app/MzResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1554
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->mCollator:Ljava/text/Collator;

    .line 1555
    return-void
.end method

.method private getPackageTimeSpent(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1583
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mStats:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->access$800(Lcom/android/internal/app/MzResolverActivity;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1584
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mStats:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/internal/app/MzResolverActivity;->access$800(Lcom/android/internal/app/MzResolverActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 1585
    .local v0, "stats":Landroid/app/usage/UsageStats;
    if-eqz v0, :cond_0

    .line 1586
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    .line 1590
    .end local v0    # "stats":Landroid/app/usage/UsageStats;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 12
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    .line 1560
    iget v5, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_1

    .line 1579
    :cond_0
    :goto_0
    return v4

    .line 1564
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mStats:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/internal/app/MzResolverActivity;->access$800(Lcom/android/internal/app/MzResolverActivity;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1565
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->getPackageTimeSpent(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->getPackageTimeSpent(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 1569
    .local v2, "timeDiff":J
    cmp-long v5, v2, v10

    if-eqz v5, :cond_2

    .line 1570
    cmp-long v5, v2, v10

    if-gtz v5, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    .line 1574
    .end local v2    # "timeDiff":J
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/internal/app/MzResolverActivity;->access$200(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1575
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1576
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->this$0:Lcom/android/internal/app/MzResolverActivity;

    # getter for: Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/internal/app/MzResolverActivity;->access$200(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1577
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_4

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1579
    :cond_4
    iget-object v4, p0, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1550
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/MzResolverActivity$ResolverComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
