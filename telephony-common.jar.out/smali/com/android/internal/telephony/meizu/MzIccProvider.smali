.class public Lcom/android/internal/telephony/meizu/MzIccProvider;
.super Lcom/android/internal/telephony/IccProvider;
.source "MzIccProvider.java"


# static fields
.field private static final DBG:Z = true

.field public static final HAS_ADDITIONAL_NUMBER_KEY:Ljava/lang/String; = "has_additional_number"

.field public static final HAS_EMAIL_KEY:Ljava/lang/String; = "has_email"

.field public static final IS_USIM_KEY:Ljava/lang/String; = "is_usim_key"

.field public static final REQUEST_BY_ID:Ljava/lang/String; = "request_by_id"

.field static final SIM_ERROR_CODE_SIM_FULL:I = -0x2

.field static final SIM_ERROR_CODE_UNKONWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MzIccProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "MzIccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MzIccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "delete"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 51
    const/4 v0, -0x1

    return v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 43
    const-string v0, "insert"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "query"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "update"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/meizu/MzIccProvider;->log(Ljava/lang/String;)V

    .line 58
    const/4 v0, -0x1

    return v0
.end method
