.class Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
.super Ljava/lang/Object;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestLogger"
.end annotation


# instance fields
.field public log:Landroid/util/LocalLog;

.field public request:Landroid/net/NetworkRequest;

.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;
    .param p2, "r"    # Landroid/net/NetworkRequest;
    .param p3, "log"    # Landroid/util/LocalLog;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->request:Landroid/net/NetworkRequest;

    .line 742
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;

    .line 740
    return-void
.end method
