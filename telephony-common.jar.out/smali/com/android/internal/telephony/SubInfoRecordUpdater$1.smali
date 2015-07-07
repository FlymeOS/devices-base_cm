.class Lcom/android/internal/telephony/SubInfoRecordUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "SubInfoRecordUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubInfoRecordUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    const-string v18, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "action":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Action: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 129
    const-string v18, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 130
    const-string v18, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, "simStatus":Ljava/lang/String;
    const-string v18, "slot"

    const/16 v19, -0x3e8

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 133
    .local v14, "slotId":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "slotId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " simStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 134
    const/16 v18, -0x3e8

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    .line 192
    .end local v13    # "simStatus":Ljava/lang/String;
    .end local v14    # "slotId":I
    :goto_0
    return-void

    .line 138
    .restart local v13    # "simStatus":Ljava/lang/String;
    .restart local v14    # "slotId":I
    :cond_0
    const-string v18, "LOADED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 139
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()Landroid/telephony/TelephonyManager;

    move-result-object v18

    if-nez v18, :cond_1

    .line 140
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v18

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$102(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 143
    :cond_1
    const-string v18, "subscription"

    const-wide/16 v20, -0x3e8

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 146
    .local v16, "subId":J
    invoke-static/range {v16 .. v17}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 147
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "msisdn":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 150
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v9, :cond_2

    .line 151
    new-instance v12, Landroid/content/ContentValues;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 152
    .local v12, "number":Landroid/content/ContentValues;
    const-string v18, "number"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v18, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v12, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    .end local v12    # "number":Landroid/content/ContentValues;
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v15

    .line 160
    .local v15, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v15, :cond_3

    iget v0, v15, Landroid/telephony/SubInfoRecord;->nameSource:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 162
    new-instance v8, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    .line 164
    .local v8, "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "Carrier":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Carrier = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName(J)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "CarrierName":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CarrierName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 172
    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 173
    .local v11, "nameToSet":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Found, name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 181
    :goto_1
    new-instance v10, Landroid/content/ContentValues;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 182
    .local v10, "name":Landroid/content/ContentValues;
    const-string v18, "display_name"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v18, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v10, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    .end local v4    # "Carrier":Ljava/lang/String;
    .end local v5    # "CarrierName":Ljava/lang/String;
    .end local v7    # "contentResolver":Landroid/content/ContentResolver;
    .end local v8    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v9    # "msisdn":Ljava/lang/String;
    .end local v10    # "name":Landroid/content/ContentValues;
    .end local v11    # "nameToSet":Ljava/lang/String;
    .end local v13    # "simStatus":Ljava/lang/String;
    .end local v14    # "slotId":I
    .end local v15    # "subInfo":Landroid/telephony/SubInfoRecord;
    .end local v16    # "subId":J
    :cond_3
    :goto_2
    const-string v18, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    .restart local v4    # "Carrier":Ljava/lang/String;
    .restart local v5    # "CarrierName":Ljava/lang/String;
    .restart local v7    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v8    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .restart local v9    # "msisdn":Ljava/lang/String;
    .restart local v13    # "simStatus":Ljava/lang/String;
    .restart local v14    # "slotId":I
    .restart local v15    # "subInfo":Landroid/telephony/SubInfoRecord;
    .restart local v16    # "subId":J
    :cond_4
    const-string v18, ""

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_5

    .line 175
    move-object v11, v5

    .restart local v11    # "nameToSet":Ljava/lang/String;
    goto :goto_1

    .line 177
    .end local v11    # "nameToSet":Ljava/lang/String;
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SIM "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v14, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 178
    .restart local v11    # "nameToSet":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not found, name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    .end local v4    # "Carrier":Ljava/lang/String;
    .end local v5    # "CarrierName":Ljava/lang/String;
    .end local v7    # "contentResolver":Landroid/content/ContentResolver;
    .end local v8    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v9    # "msisdn":Ljava/lang/String;
    .end local v11    # "nameToSet":Ljava/lang/String;
    .end local v15    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_6
    const-string v18, "[Receiver] Invalid subId, could not update ContentResolver"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto :goto_2
.end method
