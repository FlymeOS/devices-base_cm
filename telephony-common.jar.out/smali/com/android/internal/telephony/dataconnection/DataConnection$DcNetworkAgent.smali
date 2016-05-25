.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcNetworkAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 9
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I
    .param p9, "misc"    # Landroid/net/NetworkMisc;

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 1992
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    .line 1993
    return-void
.end method


# virtual methods
.method protected unwanted()V
    .locals 7

    .prologue
    .line 1996
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v4

    if-eq v4, p0, :cond_1

    .line 1997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unwanted found mNetworkAgent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", which isn\'t me.  Aborting unwanted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->log(Ljava/lang/String;)V

    .line 2009
    :cond_0
    return-void

    .line 2002
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 2003
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2004
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v4

    const v5, 0x4200f

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2005
    .local v3, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 2006
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v6, 0x40004

    invoke-virtual {v5, v6, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
