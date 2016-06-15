.class public Landroid/nfc/NfcAdapterMzExt;
.super Ljava/lang/Object;
.source "NfcAdapterMzExt.java"


# static fields
.field public static final ALL_SE_ID:Ljava/lang/String; = "com.nxp.all_se.ID"

.field public static final ALL_SE_ID_TYPE:I = 0x3

.field public static final EXTRA_NDEF_URI:Ljava/lang/String; = "android.nfc.extra.NDEF_URI"

.field public static final HOST_ID:Ljava/lang/String; = "com.nxp.host.ID"

.field public static final HOST_ID_TYPE:I = 0x0

.field public static final MEIZU_PAYMENT_SWITCH_DESCRIPTION_SMX:Ljava/lang/String; = "MeizuPaymentSwitchSMX"

.field public static final MEIZU_PAYMENT_SWITCH_DESCRIPTION_UICC:Ljava/lang/String; = "MeizuPaymentSwitchUICC"

.field public static final MEIZU_PAYMENT_SWITCH_SMX:Ljava/lang/String; = "com.meizu.paymentswitch/com.meizu.paymentswitch.PaymentServiceSMX"

.field public static final MEIZU_PAYMENT_SWITCH_UICC:Ljava/lang/String; = "com.meizu.paymentswitch/com.meizu.paymentswitch.PaymentServiceUICC"

.field public static final MZ_ACTION_MZ_NFC_P2P_STATE_CHANGED:Ljava/lang/String; = "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

.field public static final MZ_ACTION_NFC_SHARE_STATE_CHANGED:Ljava/lang/String; = "mz.android.nfc.action.MZ_ACTION_NFC_SHARE_STATE_CHANGED"

.field public static final MZ_EXTRA_MZ_NFC_P2P_STATE:Ljava/lang/String; = "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

.field public static final MZ_EXTRA_MZ_NFC_SHARE_STATE:Ljava/lang/String; = "mz.android.nfc.extra.MZ_EXTRA_MZ_NFC_SHARE_STATE"

.field public static final MZ_NFC_P2P_STATE_OFF:I = 0x0

.field public static final MZ_NFC_P2P_STATE_ON:I = 0x1

.field public static final NONE_SE_ID:Ljava/lang/String; = "com.nxp.none_se.ID"

.field public static final SMART_MX_ID:Ljava/lang/String; = "com.nxp.smart_mx.ID"

.field public static final SMART_MX_ID_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UICC_ID:Ljava/lang/String; = "com.nxp.uicc.ID"

.field public static final UICC_ID_TYPE:I = 0x2

.field private static mInstance:Landroid/nfc/NfcAdapterMzExt;

.field private static sMzExtService:Landroid/nfc/IMzNfcAdapterExt;

.field private static sService:Landroid/nfc/INfcAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Landroid/nfc/NfcAdapterMzExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Landroid/nfc/NfcAdapterMzExt;->initService()V

    .line 42
    return-void
.end method

.method public static declared-synchronized getNfcAdapterMzExt(Landroid/content/Context;)Landroid/nfc/NfcAdapterMzExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-class v1, Landroid/nfc/NfcAdapterMzExt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Landroid/nfc/NfcAdapterMzExt;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapterMzExt;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;

    .line 56
    :cond_0
    :goto_0
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :cond_1
    :try_start_1
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->sMzExtService:Landroid/nfc/IMzNfcAdapterExt;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->mInstance:Landroid/nfc/NfcAdapterMzExt;

    invoke-direct {v0}, Landroid/nfc/NfcAdapterMzExt;->initService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .prologue
    .line 164
    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 165
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 168
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method public static hasHceFeature()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 134
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    .line 135
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v4, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return v2

    .line 139
    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc.hce"

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static initNxpExt()Landroid/nfc/IMzNfcAdapterExt;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method private initService()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Landroid/nfc/NfcAdapterMzExt;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    .line 150
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->sService:Landroid/nfc/INfcAdapter;

    if-nez v0, :cond_1

    .line 151
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v1, "could not retrieve NFC service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-static {}, Landroid/nfc/NfcAdapterMzExt;->initNxpExt()Landroid/nfc/IMzNfcAdapterExt;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcAdapterMzExt;->sMzExtService:Landroid/nfc/IMzNfcAdapterExt;

    .line 155
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->sMzExtService:Landroid/nfc/IMzNfcAdapterExt;

    if-nez v0, :cond_0

    .line 156
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v1, "could not retrieve meizu external NFC service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 244
    sget-object v0, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v1, "NFC service dead - attempting to recover"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    invoke-direct {p0}, Landroid/nfc/NfcAdapterMzExt;->initService()V

    .line 246
    return-void
.end method

.method public connectMzNfcP2p()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set MZ_NFCP2P_ON to DB, the value is 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_nfcp2p_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string/jumbo v1, "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendBroadcast: mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public disconnectMzNfcP2p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set MZ_NFCP2P_ON to DB, the value is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_nfcp2p_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    sget-object v1, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendBroadcast: mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public getDefaultRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 219
    .local v1, "seID":I
    :try_start_0
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->sMzExtService:Landroid/nfc/IMzNfcAdapterExt;

    invoke-interface {v2, p1}, Landroid/nfc/IMzNfcAdapterExt;->getDefaultRoute(Ljava/lang/String;)I

    move-result v1

    .line 220
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 221
    const-string v2, "com.nxp.uicc.ID"

    .line 235
    :goto_0
    return-object v2

    .line 222
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 223
    const-string v2, "com.nxp.smart_mx.ID"

    goto :goto_0

    .line 224
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 225
    const-string v2, "com.nxp.all_se.ID"

    goto :goto_0

    .line 227
    :cond_2
    const-string v2, "com.nxp.none_se.ID"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapterMzExt;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 232
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sMzExtService may be null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v2, "com.nxp.none_se.ID"

    goto :goto_0
.end method

.method public isMzNfcP2pConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Landroid/nfc/NfcAdapterMzExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_nfcp2p_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setDefaultRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "routeLoc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "seID":I
    :try_start_0
    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v1, 0x2

    .line 197
    :goto_0
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->sMzExtService:Landroid/nfc/IMzNfcAdapterExt;

    invoke-interface {v2, p1, v1}, Landroid/nfc/IMzNfcAdapterExt;->setDefaultRoute(Ljava/lang/String;I)V

    .line 205
    :goto_1
    return-void

    .line 189
    :cond_0
    const-string v2, "com.nxp.smart_mx.ID"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    const/4 v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    const-string v2, "com.nxp.host.ID"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    const/4 v1, 0x0

    goto :goto_0

    .line 194
    :cond_2
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultRoute: wrong default route ID"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "setDefaultRoute failed: Wrong default route ID"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultRoute failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapterMzExt;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 201
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "setDefaultRoute failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v2, Landroid/nfc/NfcAdapterMzExt;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sMzExtService may be null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
