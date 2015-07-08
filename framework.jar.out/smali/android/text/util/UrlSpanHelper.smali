.class public Landroid/text/util/UrlSpanHelper;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"


# static fields
.field private static final ALL_DAY:Ljava/lang/String; = "allDay"

.field public static final DATETIME_URI:Ljava/lang/String; = "datetime:"

.field public static final DATE_TIME:I = 0x4

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final EMAIL_URI:Ljava/lang/String; = "mailto:"

.field private static final EVENT_BEGIN_TIME:Ljava/lang/String; = "eventBeginTime"

.field private static final EVENT_DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/event"

.field private static final EVENT_END_TIME:Ljava/lang/String; = "eventEndTime"

.field private static final EVENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/event"

.field private static final EVENT_TITLE:Ljava/lang/String; = "eventTitle"

.field private static final ID_ADD_TO_BOOKMARK:I = 0x2

.field private static final ID_ADD_TO_CONTACT:I = 0x3

.field private static final ID_CALL_NUM:I = 0x0

.field private static final ID_COPY:I = 0x1

.field private static final ID_NEW_CONTACT:I = 0x2

.field private static final ID_NEW_EMAIL:I = 0x0

.field private static final ID_NEW_EVENT:I = 0x0

.field private static final ID_OPEN_CALENDAR:I = 0x2

.field private static final ID_OPEN_URL:I = 0x0

.field private static final ID_SEND_MMS:I = 0x1

.field public static final MEIZU_URI:Ljava/lang/String; = "http://app.meizu.com/phone/"

.field public static final MSTORE_URI:Ljava/lang/String; = "mstore:"

.field public static final PHONE_NUMBERS:I = 0x3

.field private static final QUICK_EVENT_INSERT:Ljava/lang/String; = "com.android.calendar.QUICK_EVENT_INSERT"

.field private static final SHOW_CREATE_NEW_CONTACT_BUTTON:Ljava/lang/String; = "com.android.contacts.extra.SHOW_CREATE_NEW_CONTACT_BUTTON"

.field public static final TEL_URI:Ljava/lang/String; = "tel:"

.field private static final VIEW_TIME:Ljava/lang/String; = "viewTime"

.field public static final WEB_URLS:I = 0x1

.field private static mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;)J
    .locals 2
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    invoke-static {p0}, Landroid/text/util/UrlSpanHelper;->subDate(Ljava/lang/CharSequence;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JLandroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Landroid/text/util/UrlSpanHelper;->createAllDayEvent(JLandroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->showWarning(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(JLandroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Landroid/text/util/UrlSpanHelper;->createStartTimeEvent(JLandroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;)[J
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    invoke-static {p0}, Landroid/text/util/UrlSpanHelper;->subTimeToTime(Ljava/lang/CharSequence;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(JJLandroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroid/content/Context;
    .param p5, "x3"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    invoke-static/range {p0 .. p5}, Landroid/text/util/UrlSpanHelper;->createTimeToTimeEvent(JJLandroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->setPrimaryClip(Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(JLandroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Landroid/text/util/UrlSpanHelper;->openCalendar(JLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->getDisplayNameFromPhone(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static createAllDayEvent(JLandroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "sTime"    # J
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.QUICK_EVENT_INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "eventBeginTime"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 412
    const-string v1, "allDay"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    const-string/jumbo v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v1, "eventTitle"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 415
    invoke-static {p2, v0}, Landroid/text/util/UrlSpanHelper;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 416
    return-void
.end method

.method private static createStartTimeEvent(JLandroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "sTime"    # J
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.QUICK_EVENT_INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "eventBeginTime"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 398
    const-string/jumbo v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "eventTitle"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 400
    invoke-static {p2, v0}, Landroid/text/util/UrlSpanHelper;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 401
    return-void
.end method

.method private static createTimeToTimeEvent(JJLandroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "sTime"    # J
    .param p2, "eTime"    # J
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.QUICK_EVENT_INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "eventBeginTime"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 383
    const-string v1, "eventEndTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 384
    const-string/jumbo v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v1, "eventTitle"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 386
    invoke-static {p4, v0}, Landroid/text/util/UrlSpanHelper;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 387
    return-void
.end method

.method private static getDisplayNameFromPhone(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 487
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 488
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 491
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 493
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 500
    :cond_0
    :goto_0
    return-object v3

    .line 497
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getEventType(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 439
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    .line 442
    :catch_0
    move-exception v0

    .line 444
    const-string v0, "-1"

    goto :goto_0
.end method

.method private static openCalendar(JLandroid/content/Context;)V
    .locals 2
    .param p0, "sTime"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "viewTime"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 427
    const-string/jumbo v1, "vnd.android.cursor.dir/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-static {p2, v0}, Landroid/text/util/UrlSpanHelper;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 429
    return-void
.end method

.method private static setPrimaryClip(Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 366
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    const-string/jumbo v4, "text_copied"

    invoke-static {v3, v4}, Lcom/meizu/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/util/UrlSpanHelper;->showToastTip(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method private static showDateTimeDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .param p0, "widget"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 100
    sget-object v0, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 102
    sput-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 104
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "value":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "title":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/util/UrlSpanHelper;->getEventType(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "eventType":Ljava/lang/String;
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 110
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 115
    .local v4, "eventTitle":Ljava/lang/CharSequence;
    :goto_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    sget v7, Lcom/flyme/internal/R$array;->urlspan_date_dialog_title:I

    new-instance v0, Landroid/text/util/UrlSpanHelper$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/util/UrlSpanHelper$1;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 167
    sget-object v0, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 168
    return-void

    .line 110
    .end local v4    # "eventTitle":Ljava/lang/CharSequence;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    new-instance v4, Ljava/lang/String;

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "eventTitle":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public static showDialog(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0
    .param p0, "widget"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 75
    sparse-switch p2, :sswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 77
    :sswitch_0
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->showDateTimeDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :sswitch_1
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->showWebDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :sswitch_2
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->showEmailDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :sswitch_3
    invoke-static {p0, p1}, Landroid/text/util/UrlSpanHelper;->showTelDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static showEmailDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0, "widget"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->hide()V

    .line 179
    const/4 v4, 0x0

    sput-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 181
    :cond_0
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "value":Ljava/lang/CharSequence;
    move-object v2, v3

    .local v2, "title":Ljava/lang/CharSequence;
    move-object v4, v3

    .line 183
    check-cast v4, Ljava/lang/String;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 185
    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 187
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 189
    sget v4, Lcom/flyme/internal/R$array;->urlspan_email_dialog_title:I

    new-instance v5, Landroid/text/util/UrlSpanHelper$2;

    invoke-direct {v5, p0, p1, v3}, Landroid/text/util/UrlSpanHelper$2;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 219
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 220
    return-void
.end method

.method private static showTelDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p0, "widget"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->hide()V

    .line 231
    const/4 v2, 0x0

    sput-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 233
    :cond_0
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "value":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    sget v2, Lcom/flyme/internal/R$array;->urlspan_tel_dialog_title:I

    new-instance v3, Landroid/text/util/UrlSpanHelper$3;

    invoke-direct {v3, p0, p1, v1}, Landroid/text/util/UrlSpanHelper$3;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 271
    sget-object v2, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 273
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/text/util/UrlSpanHelper$4;

    invoke-direct {v3, v1, p0}, Landroid/text/util/UrlSpanHelper$4;-><init>(Ljava/lang/CharSequence;Landroid/view/View;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 290
    return-void
.end method

.method private static showToastTip(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 504
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 505
    return-void
.end method

.method private static showWarning(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0, "widget"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 514
    sget-object v3, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    sget-object v3, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    sget-object v3, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->hide()V

    .line 516
    sput-object v5, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 520
    :cond_0
    if-eqz p1, :cond_1

    const-string v3, "http://app.meizu.com/phone/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mstore:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 525
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    move-object v1, v2

    .line 526
    .local v1, "openUri":Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/flyme/internal/R$string;->url_warning_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 528
    sget v3, Lcom/flyme/internal/R$string;->url_warning_messgae:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 529
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    const v3, 0x104000a

    new-instance v4, Landroid/text/util/UrlSpanHelper$6;

    invoke-direct {v4, v1, p0}, Landroid/text/util/UrlSpanHelper$6;-><init>(Landroid/net/Uri;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 538
    sget-object v3, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 539
    return-void

    .line 523
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "openUri":Landroid/net/Uri;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private static showWebDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0, "widget"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 299
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->hide()V

    .line 301
    const/4 v4, 0x0

    sput-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 305
    :cond_0
    if-eqz p1, :cond_2

    const-string v4, "http://app.meizu.com/phone/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mstore:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 310
    .local v3, "uri":Landroid/net/Uri;
    :goto_0
    move-object v2, v3

    .line 311
    .local v2, "openUri":Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "geo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 317
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$array;->urlspan_open_dialog_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "items":[Ljava/lang/CharSequence;
    sget-object v4, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$array;->urlspan_open_dialog_title_chinamobile:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 321
    :cond_1
    new-instance v4, Landroid/text/util/UrlSpanHelper$5;

    invoke-direct {v4, p0, p1, v2}, Landroid/text/util/UrlSpanHelper$5;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    .line 354
    sget-object v4, Landroid/text/util/UrlSpanHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 355
    return-void

    .line 308
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "items":[Ljava/lang/CharSequence;
    .end local v2    # "openUri":Landroid/net/Uri;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 315
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v2    # "openUri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 542
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 549
    .local v0, "chooserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static subDate(Ljava/lang/CharSequence;)J
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 454
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static subTimeToTime(Ljava/lang/CharSequence;)[J
    .locals 6
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 466
    const/4 v2, 0x2

    new-array v0, v2, [J

    .line 467
    .local v0, "time":[J
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "value1":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 473
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 476
    return-object v0
.end method
