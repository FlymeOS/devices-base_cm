.class Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;
.super Landroid/os/FileObserver;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpaConfigFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    .line 710
    const-string/jumbo v0, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 709
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 715
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 716
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 717
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wpa_supplicant.conf changed; new size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->-wrap2(Lcom/android/server/wifi/WifiConfigStore;Ljava/lang/String;)V

    .line 714
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method
