.class Lcom/android/internal/telephony/UiccSmsController$1;
.super Landroid/content/BroadcastReceiver;
.source "UiccSmsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccSmsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccSmsController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccSmsController;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/UiccSmsController$1;->this$0:Lcom/android/internal/telephony/UiccSmsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UiccSmsController$1;->getResultCode()I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_0

    .line 127
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UiccSmsController$1;->getResultData()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "destAddr":Ljava/lang/String;
    const-string v2, "scAddr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "scAddr":Ljava/lang/String;
    const-string v2, "subId"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/UiccSmsController$1;->this$0:Lcom/android/internal/telephony/UiccSmsController;

    # invokes: Lcom/android/internal/telephony/UiccSmsController;->getDefaultSmsSubId()J
    invoke-static {v9}, Lcom/android/internal/telephony/UiccSmsController;->access$000(Lcom/android/internal/telephony/UiccSmsController;)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 84
    .local v16, "subId":J
    const-string v2, "callingPackage"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "callingPackage":Ljava/lang/String;
    const-string v2, "parts"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 86
    .local v6, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "sentIntents"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 87
    .local v7, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "deliveryIntents"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 89
    .local v8, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "callingUid"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\\"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "callingUid"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    :cond_1
    const-string v2, "multipart"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    const-string v2, "SMS"

    const/4 v9, 0x2

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/UiccSmsController$1;->this$0:Lcom/android/internal/telephony/UiccSmsController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ProxiedMultiPartSms destAddr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n scAddr= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n subId= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n callingPackage= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n partsSize= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/UiccSmsController;->log(Ljava/lang/String;)V

    .line 101
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/UiccSmsController$1;->this$0:Lcom/android/internal/telephony/UiccSmsController;

    move-wide/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->access$100(Lcom/android/internal/telephony/UiccSmsController;J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 107
    :cond_3
    const/4 v14, 0x0

    .line 108
    .local v14, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 111
    .restart local v14    # "sentIntent":Landroid/app/PendingIntent;
    :cond_4
    const/4 v15, 0x0

    .line 112
    .local v15, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 115
    .restart local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_5
    const/4 v13, 0x0

    .line 116
    .local v13, "text":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 117
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "text":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 119
    .restart local v13    # "text":Ljava/lang/String;
    :cond_6
    const-string v2, "SMS"

    const/4 v9, 0x2

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/UiccSmsController$1;->this$0:Lcom/android/internal/telephony/UiccSmsController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ProxiedSms destAddr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n scAddr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n subId= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n callingPackage="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/UiccSmsController;->log(Ljava/lang/String;)V

    .line 125
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/UiccSmsController$1;->this$0:Lcom/android/internal/telephony/UiccSmsController;

    move-wide/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->access$100(Lcom/android/internal/telephony/UiccSmsController;J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v9

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method
