.class Lcom/android/server/wifi/ScanDetailCache$2;
.super Ljava/lang/Object;
.source "ScanDetailCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ScanDetailCache;->sort()Ljava/util/ArrayList;
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
    .line 119
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetailCache$2;->this$0:Lcom/android/server/wifi/ScanDetailCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 121
    check-cast p1, Lcom/android/server/wifi/ScanDetail;

    .end local p1    # "o1":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 122
    .local v0, "a":Landroid/net/wifi/ScanResult;
    check-cast p2, Lcom/android/server/wifi/ScanDetail;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 123
    .local v1, "b":Landroid/net/wifi/ScanResult;
    iget v2, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iget v3, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    if-le v2, v3, :cond_0

    .line 124
    return v7

    .line 126
    :cond_0
    iget v2, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iget v3, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    if-ge v2, v3, :cond_1

    .line 127
    return v6

    .line 129
    :cond_1
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 130
    return v6

    .line 132
    :cond_2
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 133
    return v7

    .line 135
    :cond_3
    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    if-le v2, v3, :cond_4

    .line 136
    return v6

    .line 138
    :cond_4
    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    if-ge v2, v3, :cond_5

    .line 139
    return v7

    .line 141
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
