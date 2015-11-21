.class Lcom/android/server/wifi/WifiApConfigStore;
.super Lcom/android/internal/util/StateMachine;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiApConfigStore$ActiveState;,
        Lcom/android/server/wifi/WifiApConfigStore$InactiveState;,
        Lcom/android/server/wifi/WifiApConfigStore$DefaultState;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String;

.field private static final AP_CONFIG_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"


# instance fields
.field private mActiveState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 65
    const-string v0, "WifiApConfigStore"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 57
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    .line 58
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    .line 59
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 62
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 67
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiApConfigStore;->setInitialState(Lcom/android/internal/util/State;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 76
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 77
    .local v0, "s":Lcom/android/server/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->start()V

    .line 78
    return-object v0
.end method

.method private setDefaultApConfiguration()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 210
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 212
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1040089

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 214
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v4, 0x1040595

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 218
    :cond_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1120004

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 221
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x104008a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 223
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "randomUUID":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 230
    .end local v1    # "randomUUID":Ljava/lang/String;
    :cond_1
    const v2, 0x20019

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V

    .line 231
    return-void

    .line 218
    :cond_2
    const/4 v2, 0x4

    goto :goto_0
.end method

.method private writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 188
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 190
    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :cond_0
    if-eqz v3, :cond_3

    .line 199
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 203
    .end local v0    # "authType":I
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 200
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_0

    .line 194
    .end local v0    # "authType":I
    :catch_1
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    if-eqz v2, :cond_1

    .line 199
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 200
    :catch_2
    move-exception v4

    goto :goto_0

    .line 197
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 199
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 200
    :cond_2
    :goto_3
    throw v4

    :catch_3
    move-exception v5

    goto :goto_3

    .line 197
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 194
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :cond_3
    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method loadApConfiguration()V
    .locals 9

    .prologue
    .line 147
    const/4 v3, 0x0

    .line 149
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 150
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    sget-object v8, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 154
    .local v5, "version":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 155
    const-string v6, "WifiApConfigStore"

    const-string v7, "Bad version on hotspot configuration file, set defaults"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    if-eqz v4, :cond_0

    .line 171
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v3, v4

    .line 175
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "version":I
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 159
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "version":I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 160
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 161
    .local v0, "authType":I
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    .line 162
    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 165
    :cond_3
    iput-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    if-eqz v4, :cond_5

    .line 171
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .line 172
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .line 166
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "version":I
    :catch_1
    move-exception v2

    .line 167
    .local v2, "ignore":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 169
    if-eqz v3, :cond_1

    .line 171
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 172
    :catch_2
    move-exception v6

    goto :goto_1

    .line 169
    .end local v2    # "ignore":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_4

    .line 171
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 172
    :cond_4
    :goto_4
    throw v6

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "version":I
    :catch_3
    move-exception v6

    goto :goto_0

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "version":I
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v7

    goto :goto_4

    .line 169
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 166
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "version":I
    :cond_5
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_1
.end method
