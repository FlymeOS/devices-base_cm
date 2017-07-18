.class final Lcom/android/server/wifi/WifiConfigStore$1;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1419
    invoke-static {p1}, Lcom/android/server/wifi/WifiConfigStore;->-wrap0(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1420
    .local v0, "configAScore":I
    invoke-static {p2}, Lcom/android/server/wifi/WifiConfigStore;->-wrap0(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 1421
    .local v1, "configBScore":I
    if-ne v0, v1, :cond_1

    .line 1424
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eq v2, v3, :cond_0

    .line 1425
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    int-to-long v2, v2

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    return v2

    .line 1427
    :cond_0
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    .line 1430
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 1418
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore$1;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method
