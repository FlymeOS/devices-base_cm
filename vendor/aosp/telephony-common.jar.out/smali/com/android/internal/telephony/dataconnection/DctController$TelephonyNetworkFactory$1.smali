.class Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;
.super Ljava/lang/Object;
.source "DctController.java"

# interfaces
.implements Lcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->registerOnDemandDdsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;)V
    .locals 0

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;->this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyOnDemandDdsLockGranted(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;->this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got the tempDds lock for the request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;->this$1:Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->processPendingNetworkRequests(Landroid/net/NetworkRequest;)V

    .line 1148
    return-void
.end method
