.class Landroid/net/wifi/WifiConfiguration$1;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiConfiguration;->trimScanResultsCache(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$1;->this$0:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 1052
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/ScanResult;

    .local v0, "a":Landroid/net/wifi/ScanResult;
    move-object v1, p2

    .line 1053
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1054
    .local v1, "b":Landroid/net/wifi/ScanResult;
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1055
    const/4 v2, 0x1

    .line 1060
    :goto_0
    return v2

    .line 1057
    :cond_0
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1058
    const/4 v2, -0x1

    goto :goto_0

    .line 1060
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
