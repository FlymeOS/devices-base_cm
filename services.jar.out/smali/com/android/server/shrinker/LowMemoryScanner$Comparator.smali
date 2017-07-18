.class public Lcom/android/server/shrinker/LowMemoryScanner$Comparator;
.super Ljava/lang/Object;
.source "LowMemoryScanner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/shrinker/LowMemoryScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/shrinker/PackageRecordExt;Lcom/android/server/shrinker/PackageRecordExt;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/shrinker/PackageRecordExt;
    .param p2, "rhs"    # Lcom/android/server/shrinker/PackageRecordExt;

    .prologue
    .line 201
    iget-wide v0, p2, Lcom/android/server/shrinker/PackageRecordExt;->totalRss:J

    iget-wide v2, p1, Lcom/android/server/shrinker/PackageRecordExt;->totalRss:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 200
    check-cast p1, Lcom/android/server/shrinker/PackageRecordExt;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/shrinker/PackageRecordExt;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/shrinker/LowMemoryScanner$Comparator;->compare(Lcom/android/server/shrinker/PackageRecordExt;Lcom/android/server/shrinker/PackageRecordExt;)I

    move-result v0

    return v0
.end method
