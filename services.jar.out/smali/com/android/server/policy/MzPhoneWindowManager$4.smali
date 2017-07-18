.class Lcom/android/server/policy/MzPhoneWindowManager$4;
.super Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MzPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiLocked:Z

.field final synthetic this$0:Lcom/android/server/policy/MzPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MzPhoneWindowManager;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0, p2}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 781
    const-string/jumbo v7, "SCENE_CHANGED"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, p2

    .line 782
    check-cast v3, [Ljava/lang/String;

    .line 783
    .local v3, "result":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v7, v3

    if-lt v7, v10, :cond_1

    .line 784
    aget-object v4, v3, v6

    .line 785
    .local v4, "scene":Ljava/lang/String;
    aget-object v2, v3, v9

    .line 786
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_2

    const/4 v5, 0x1

    .line 788
    .local v5, "wifiStatus":Z
    :goto_0
    const-string/jumbo v7, "game"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 789
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v7, v9}, Lcom/android/server/policy/MzPhoneWindowManager;->-set2(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z

    .line 790
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/MzPhoneWindowManager;->-get1(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 791
    const-string/jumbo v8, "mz_game_mode_accelerate"

    .line 790
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_3

    const/4 v0, 0x1

    .line 792
    .local v0, "accelerate":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/MzPhoneWindowManager;->-get1(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 793
    const-string/jumbo v8, "mz_game_mode_disable_mback"

    .line 792
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_4

    const/4 v1, 0x1

    .line 795
    .local v1, "disableBack":Z
    :goto_2
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/MzPhoneWindowManager;->-get0(Lcom/android/server/policy/MzPhoneWindowManager;)Z

    move-result v8

    if-eqz v8, :cond_5

    .end local v1    # "disableBack":Z
    :goto_3
    invoke-static {v7, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->-set1(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z

    .line 796
    if-eqz v5, :cond_1

    .line 797
    iget-object v6, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v6, :cond_0

    .line 799
    iget-object v6, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/MzPhoneWindowManager;->-get1(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 798
    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 800
    const-string/jumbo v7, "AlphaMe"

    .line 798
    invoke-virtual {v6, v10, v7}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 802
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->mWifiLocked:Z

    if-nez v6, :cond_1

    .line 803
    iget-object v6, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 804
    iput-boolean v9, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->mWifiLocked:Z

    .line 780
    .end local v0    # "accelerate":Z
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "result":[Ljava/lang/String;
    .end local v4    # "scene":Ljava/lang/String;
    .end local v5    # "wifiStatus":Z
    :cond_1
    :goto_4
    return-void

    .line 786
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "result":[Ljava/lang/String;
    .restart local v4    # "scene":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "wifiStatus":Z
    goto :goto_0

    .line 790
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "accelerate":Z
    goto :goto_1

    .line 792
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "disableBack":Z
    goto :goto_2

    :cond_5
    move v1, v6

    .line 795
    goto :goto_3

    .line 808
    .end local v0    # "accelerate":Z
    .end local v1    # "disableBack":Z
    :cond_6
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v7, v6}, Lcom/android/server/policy/MzPhoneWindowManager;->-set1(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z

    .line 809
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v7, v6}, Lcom/android/server/policy/MzPhoneWindowManager;->-set2(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z

    .line 810
    iget-boolean v7, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->mWifiLocked:Z

    if-eqz v7, :cond_1

    .line 811
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 812
    iput-boolean v6, p0, Lcom/android/server/policy/MzPhoneWindowManager$4;->mWifiLocked:Z

    goto :goto_4
.end method
