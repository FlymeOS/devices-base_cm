.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final BLACKLIST_TYPE:I = 0x8

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final DURATION_TYPE:Ljava/lang/String; = "duration_type"

.field public static final DURATION_TYPE_ACTIVE:I = 0x0

.field public static final DURATION_TYPE_CALLOUT:I = 0x1

.field public static final EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final FEATURES:Ljava/lang/String; = "features"

.field public static final FEATURES_VIDEO:I = 0x1

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_IMS_TYPE:I = 0x5

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field private static final MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final MISSED_IMS_TYPE:I = 0x7

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final OUTGOING_IMS_TYPE:I = 0x6

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 67
    const-string v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 124
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;
    .locals 13
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;

    .prologue
    .line 431
    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v1 .. v12}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;Z)Landroid/net/Uri;
    .locals 15
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z

    .prologue
    .line 464
    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v1 .. v13}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZI)Landroid/net/Uri;
    .locals 29
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z
    .param p12, "durationType"    # I

    .prologue
    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 498
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v16, 0x1

    .line 505
    .local v16, "numberPresentation":I
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_9

    .line 506
    const/16 v16, 0x2

    .line 513
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    .line 514
    const-string p2, ""

    .line 515
    if-eqz p0, :cond_1

    .line 516
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 521
    :cond_1
    const/4 v8, 0x0

    .line 522
    .local v8, "accountComponentString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 523
    .local v9, "accountId":Ljava/lang/String;
    if-eqz p6, :cond_2

    .line 524
    invoke-virtual/range {p6 .. p6}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 525
    invoke-virtual/range {p6 .. p6}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v9

    .line 528
    :cond_2
    new-instance v24, Landroid/content/ContentValues;

    const/4 v3, 0x6

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 530
    .local v24, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "number"

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string/jumbo v3, "presentation"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    const-string/jumbo v3, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string v3, "features"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    const-string v3, "date"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 535
    const-string v3, "duration"

    move/from16 v0, p9

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 536
    const-string v3, "duration_type"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    if-eqz p10, :cond_3

    .line 538
    const-string v3, "data_usage"

    move-object/from16 v0, v24

    move-object/from16 v1, p10

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 540
    :cond_3
    const-string/jumbo v3, "subscription_component_name"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string/jumbo v3, "subscription_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string/jumbo v3, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_4

    .line 545
    const-string v3, "is_read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    :cond_4
    if-eqz p0, :cond_5

    .line 548
    const-string/jumbo v3, "name"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string/jumbo v3, "numbertype"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    const-string/jumbo v3, "numberlabel"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_5
    if-eqz p0, :cond_7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 563
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 564
    .local v15, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =? AND data4 =?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v6, v7

    const/4 v7, 0x1

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 581
    .end local v15    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v12, "cursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v12, :cond_7

    .line 583
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 584
    sget-object v3, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "type"

    const-string v5, "call"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    .line 589
    .local v13, "feedbackUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v13, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    .end local v13    # "feedbackUri":Landroid/net/Uri;
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 597
    .end local v12    # "cursor":Landroid/database/Cursor;
    :cond_7
    const/16 v18, 0x0

    .line 599
    .local v18, "result":Landroid/net/Uri;
    if-eqz p11, :cond_e

    .line 602
    const-string/jumbo v3, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 604
    .local v22, "userManager":Landroid/os/UserManager;
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v23

    .line 605
    .local v23, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/os/UserManager;->getUserHandle()I

    move-result v11

    .line 606
    .local v11, "currentUserId":I
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v10

    .line 607
    .local v10, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v10, :cond_f

    .line 608
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    .line 609
    .local v20, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v21

    .line 610
    .local v21, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "no_outgoing_calls"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_8

    .line 614
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v4}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 616
    .local v19, "uri":Landroid/net/Uri;
    move-object/from16 v0, v20

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v11, :cond_8

    .line 617
    move-object/from16 v18, v19

    .line 607
    .end local v19    # "uri":Landroid/net/Uri;
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 507
    .end local v8    # "accountComponentString":Ljava/lang/String;
    .end local v9    # "accountId":Ljava/lang/String;
    .end local v10    # "count":I
    .end local v11    # "currentUserId":I
    .end local v14    # "i":I
    .end local v18    # "result":Landroid/net/Uri;
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "userHandle":Landroid/os/UserHandle;
    .end local v22    # "userManager":Landroid/os/UserManager;
    .end local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_9
    const/4 v3, 0x4

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 508
    const/16 v16, 0x4

    goto/16 :goto_0

    .line 509
    :cond_a
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 511
    :cond_b
    const/16 v16, 0x3

    goto/16 :goto_0

    .line 571
    .restart local v8    # "accountComponentString":Ljava/lang/String;
    .restart local v9    # "accountId":Ljava/lang/String;
    .restart local v24    # "values":Landroid/content/ContentValues;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 572
    .local v17, "phoneNumber":Ljava/lang/String;
    :goto_3
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "contact_id =?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .restart local v12    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1

    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v17    # "phoneNumber":Ljava/lang/String;
    :cond_d
    move-object/from16 v17, p2

    .line 571
    goto :goto_3

    .line 592
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    .line 622
    .end local v12    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "result":Landroid/net/Uri;
    :cond_e
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 625
    :cond_f
    return-object v18
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 656
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 657
    .local v1, "result":Landroid/net/Uri;
    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 660
    return-object v1
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 636
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 638
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "number"

    aput-object v4, v2, v3

    const-string/jumbo v3, "type = 2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 644
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 645
    :cond_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v1

    .line 647
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 649
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method
