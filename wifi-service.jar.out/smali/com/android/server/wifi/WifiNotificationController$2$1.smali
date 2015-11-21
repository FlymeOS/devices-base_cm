.class Lcom/android/server/wifi/WifiNotificationController$2$1;
.super Ljava/lang/Object;
.source "WifiNotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiNotificationController$2;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController$2;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$2$1;->this$1:Lcom/android/server/wifi/WifiNotificationController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$2$1;->this$1:Lcom/android/server/wifi/WifiNotificationController$2;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNotificationController$2;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$500(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 286
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 287
    return-void
.end method
