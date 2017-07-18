.class Lcom/android/server/wifi/ScanDetailCache$1;
.super Ljava/lang/Object;
.source "ScanDetailCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ScanDetailCache;->trim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ScanDetailCache;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScanDetailCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/ScanDetailCache;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetailCache$1;->this$0:Lcom/android/server/wifi/ScanDetailCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    .local v0, "a":Lcom/android/server/wifi/ScanDetail;
    move-object v1, p2

    .line 96
    check-cast v1, Lcom/android/server/wifi/ScanDetail;

    .line 97
    .local v1, "b":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 98
    const/4 v2, 0x1

    return v2

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 101
    const/4 v2, -0x1

    return v2

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
