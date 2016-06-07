.class public Lcom/android/internal/telephony/meizu/MzIccProvider;
.super Lcom/android/internal/telephony/IccProvider;
.source "MzIccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final DBG:Z = false

.field private static final EMAILS:Ljava/lang/String; = "emails"

.field private static EMAILS_COLUMN_INDEX:I = 0x0

.field public static final HAS_ADDITIONAL_NUMBER_KEY:Ljava/lang/String; = "has_additional_number"

.field public static final HAS_EMAIL_KEY:Ljava/lang/String; = "has_email"

.field private static final ID:Ljava/lang/String; = "_id"

.field private static ID_COLUMN_INDEX:I = 0x0

.field public static final IS_USIM_KEY:Ljava/lang/String; = "is_usim_key"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static NAME_COLUMN_INDEX:I = 0x0

.field private static final NAME_TAG:Ljava/lang/String; = "tag"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static NUMBER_COLUMN_INDEX:I = 0x0

.field public static final REQUEST_BY_ID:Ljava/lang/String; = "request_by_id"

.field private static final SECOND_NUMBER:Ljava/lang/String; = "second_number"

.field private static SECOND_NUMBER_COLUMN_INDEX:I = 0x0

.field private static final SIM_ERROR_CODE_SIM_FULL:I = -0x2

.field private static final SIM_ERROR_CODE_UNKONWN:I = -0x1

.field private static final SORT_KEY:Ljava/lang/String; = "sort_key"

.field private static SORT_KEY_COLUMN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MzIccProvider"

.field private static mIsColumnIndexInited:Z

.field private static mSimContactsNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "second_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 43
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->NAME_COLUMN_INDEX:I

    .line 44
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->NUMBER_COLUMN_INDEX:I

    .line 45
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->EMAILS_COLUMN_INDEX:I

    .line 46
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->ID_COLUMN_INDEX:I

    .line 47
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->SECOND_NUMBER_COLUMN_INDEX:I

    .line 48
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->SORT_KEY_COLUMN_INDEX:I

    .line 50
    sput-boolean v4, Lcom/android/internal/telephony/meizu/MzIccProvider;->mIsColumnIndexInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;-><init>()V

    return-void
.end method

.method private getColumnIndexAndNum(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mIsColumnIndexInited:Z

    if-nez v0, :cond_0

    .line 89
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NAME_COLUMN_INDEX:I

    .line 90
    const-string v0, "number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NUMBER_COLUMN_INDEX:I

    .line 91
    const-string v0, "emails"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->EMAILS_COLUMN_INDEX:I

    .line 92
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->ID_COLUMN_INDEX:I

    .line 93
    const-string v0, "second_number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->SECOND_NUMBER_COLUMN_INDEX:I

    .line 94
    const-string v0, "sort_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->SORT_KEY_COLUMN_INDEX:I

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mIsColumnIndexInited:Z

    .line 97
    :cond_0
    return-void
.end method

.method private getContactsEmails(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 116
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->EMAILS_COLUMN_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 117
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->EMAILS_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getContactsId(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, -0x1

    .line 124
    sget v1, Lcom/android/internal/telephony/meizu/MzIccProvider;->ID_COLUMN_INDEX:I

    if-eq v1, v0, :cond_0

    .line 125
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->ID_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 128
    :cond_0
    return v0
.end method

.method private getContactsName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 100
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NAME_COLUMN_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 101
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NAME_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getContactsNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 108
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NUMBER_COLUMN_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 109
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NUMBER_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getContactsSecondNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 132
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->SECOND_NUMBER_COLUMN_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 133
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->SECOND_NUMBER_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getContactsSortKey(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 140
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->SORT_KEY_COLUMN_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 141
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->SORT_KEY_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsId(Landroid/database/Cursor;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 149
    const-string v0, "tag"

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/IccProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/IccProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 65
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 66
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getColumnIndexAndNum(Landroid/database/Cursor;)V

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSimContactsNum:I

    .line 68
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    sget v4, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSimContactsNum:I

    invoke-direct {v2, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 69
    .local v2, "newCursor":Landroid/database/MatrixCursor;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    sget-object v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/Object;

    .line 71
    .local v0, "contact":[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 72
    const/4 v3, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 73
    const/4 v3, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsEmails(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 74
    const/4 v3, 0x3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsId(Landroid/database/Cursor;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 75
    const/4 v3, 0x4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsSecondNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 76
    const/4 v3, 0x5

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsSortKey(Landroid/database/Cursor;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 77
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    .end local v0    # "contact":[Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 84
    .end local v2    # "newCursor":Landroid/database/MatrixCursor;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "tag"

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
