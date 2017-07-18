.class Lcom/android/server/shrinker/RunningPackageList$Comparator;
.super Ljava/lang/Object;
.source "RunningPackageList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/shrinker/RunningPackageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/shrinker/PackageRecordExt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/shrinker/RunningPackageList$Comparator;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/shrinker/RunningPackageList$Comparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/shrinker/PackageRecordExt;Lcom/android/server/shrinker/PackageRecordExt;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/shrinker/PackageRecordExt;
    .param p2, "rhs"    # Lcom/android/server/shrinker/PackageRecordExt;

    .prologue
    .line 173
    iget v0, p1, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    iget v1, p2, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    if-eq v0, v1, :cond_0

    .line 174
    iget v0, p2, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    iget v1, p1, Lcom/android/server/shrinker/PackageRecordExt;->oomPriority:I

    sub-int/2addr v0, v1

    return v0

    .line 176
    :cond_0
    iget-wide v0, p1, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    iget-wide v2, p2, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 172
    check-cast p1, Lcom/android/server/shrinker/PackageRecordExt;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/shrinker/PackageRecordExt;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/shrinker/RunningPackageList$Comparator;->compare(Lcom/android/server/shrinker/PackageRecordExt;Lcom/android/server/shrinker/PackageRecordExt;)I

    move-result v0

    return v0
.end method
