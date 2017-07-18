.class public Lcom/android/internal/telephony/meizu/MzIccProvider;
.super Lcom/android/internal/telephony/IccProvider;
.source "MzIccProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;,
        Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;,
        Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;
    }
.end annotation


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


# instance fields
.field private mHasAdditionalNumber:Z

.field private mHasEmail:Z

.field private mIsColumnIndexInited:Z

.field private mIsUsimorCsim:Z

.field private mSimContactsNum:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->SORT_KEY_COLUMN_INDEX:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, -0x1

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "emails"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "second_number"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "sort_key"

    aput-object v1, v0, v4

    .line 44
    sput-object v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 53
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->NAME_COLUMN_INDEX:I

    .line 54
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->NUMBER_COLUMN_INDEX:I

    .line 55
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->EMAILS_COLUMN_INDEX:I

    .line 56
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->ID_COLUMN_INDEX:I

    .line 57
    sput v3, Lcom/android/internal/telephony/meizu/MzIccProvider;->SECOND_NUMBER_COLUMN_INDEX:I

    .line 58
    sput v4, Lcom/android/internal/telephony/meizu/MzIccProvider;->SORT_KEY_COLUMN_INDEX:I

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;-><init>()V

    return-void
.end method

.method private getColumnIndexAndNum(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mIsColumnIndexInited:Z

    if-nez v0, :cond_0

    .line 109
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NAME_COLUMN_INDEX:I

    .line 110
    const-string/jumbo v0, "number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NUMBER_COLUMN_INDEX:I

    .line 111
    const-string/jumbo v0, "emails"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->EMAILS_COLUMN_INDEX:I

    .line 112
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->ID_COLUMN_INDEX:I

    .line 113
    const-string/jumbo v0, "second_number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->SECOND_NUMBER_COLUMN_INDEX:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mIsColumnIndexInited:Z

    .line 107
    :cond_0
    return-void
.end method

.method private getContactsEmails(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 135
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->EMAILS_COLUMN_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 136
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->EMAILS_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getContactsId(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, -0x1

    .line 143
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->ID_COLUMN_INDEX:I

    if-eq v0, v1, :cond_0

    .line 144
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->ID_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0

    .line 147
    :cond_0
    return v1
.end method

.method private getContactsName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 119
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NAME_COLUMN_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 120
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NAME_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getContactsNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 127
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NUMBER_COLUMN_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 128
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->NUMBER_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getContactsSecondNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 151
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->SECOND_NUMBER_COLUMN_INDEX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 152
    sget v0, Lcom/android/internal/telephony/meizu/MzIccProvider;->SECOND_NUMBER_COLUMN_INDEX:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getContactsSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->getInstance()Lcom/android/internal/telephony/meizu/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/meizu/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 160
    .local v3, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "token$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;

    .line 165
    .local v1, "token":Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    iget v4, v1, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->type:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_1

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 167
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    iget-object v4, v1, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    iget-object v4, v1, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 174
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :cond_2
    iget-object v4, v1, Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 179
    .end local v1    # "token":Lcom/android/internal/telephony/meizu/HanziToPinyin$Token;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 181
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "token$iterator":Ljava/util/Iterator;
    :cond_4
    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 186
    const-string/jumbo v0, "tag"

    const-string/jumbo v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/IccProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/IccProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 78
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 79
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getColumnIndexAndNum(Landroid/database/Cursor;)V

    .line 80
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSimContactsNum:I

    .line 81
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mSimContactsNum:I

    invoke-direct {v3, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 82
    .local v3, "newCursor":Landroid/database/MatrixCursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    sget-object v5, Lcom/android/internal/telephony/meizu/MzIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v5, v5

    new-array v1, v5, [Ljava/lang/Object;

    .line 84
    .local v1, "contact":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    .line 85
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 86
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsEmails(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 87
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsId(Landroid/database/Cursor;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v1, v6

    .line 88
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsSecondNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v1, v6

    .line 89
    const/4 v5, 0x0

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/meizu/MzIccProvider;->getContactsSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v1, v6

    .line 90
    iget-boolean v6, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mHasEmail:Z

    const/4 v5, 0x2

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_1
    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mHasEmail:Z

    .line 91
    iget-boolean v6, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mHasAdditionalNumber:Z

    const/4 v5, 0x4

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_2
    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mHasAdditionalNumber:Z

    .line 92
    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    .line 91
    :cond_1
    const/4 v5, 0x1

    goto :goto_2

    .line 94
    .end local v1    # "contact":[Ljava/lang/Object;
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 95
    new-instance v4, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;-><init>(Lcom/android/internal/telephony/meizu/MzIccProvider;Landroid/database/Cursor;)V

    .line 97
    .local v4, "sortCursor":Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "is_usim_key"

    iget-boolean v6, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mIsUsimorCsim:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string/jumbo v5, "has_additional_number"

    iget-boolean v6, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mHasAdditionalNumber:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    const-string/jumbo v5, "has_email"

    iget-boolean v6, p0, Lcom/android/internal/telephony/meizu/MzIccProvider;->mHasEmail:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    new-instance v5, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;

    invoke-direct {v5, p0, v4, v0}, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;-><init>(Lcom/android/internal/telephony/meizu/MzIccProvider;Landroid/database/Cursor;Landroid/os/Bundle;)V

    return-object v5

    .line 104
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "newCursor":Landroid/database/MatrixCursor;
    .end local v4    # "sortCursor":Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;
    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 197
    const-string/jumbo v0, "tag"

    const-string/jumbo v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
