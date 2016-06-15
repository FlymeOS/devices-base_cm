.class public final Landroid/provider/Settings$ShareList;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareList"
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "meizu_share"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field public static final INTENT_TYPE:Ljava/lang/String; = "intent_type"

.field public static final PACKAGE_NAMES:Ljava/lang/String; = "package_names"

.field private static final TAG:Ljava/lang/String; = "Settings$ShareList"

.field private static final sPackageNamesProjection:[Ljava/lang/String;

.field private static final sTypeSelection:Ljava/lang/String; = "intent_type=? AND intent_action=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7241
    const-string v0, "content://meizu_share/share_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$ShareList;->CONTENT_URI:Landroid/net/Uri;

    .line 7246
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "package_names"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$ShareList;->sPackageNamesProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSortedListByType(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intentType"    # Ljava/lang/String;
    .param p2, "intentAction"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 7253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7278
    :cond_0
    :goto_0
    return-object v5

    .line 7257
    :cond_1
    const/4 v7, 0x0

    .line 7258
    .local v7, "pkgNames":Ljava/lang/String;
    sget-object v1, Landroid/provider/Settings$ShareList;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$ShareList;->sPackageNamesProjection:[Ljava/lang/String;

    const-string v3, "intent_type=? AND intent_action=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7263
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 7268
    :goto_1
    if-nez v7, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 7270
    :try_start_1
    const-string/jumbo v0, "package_names"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 7275
    :cond_2
    if-eqz v6, :cond_3

    .line 7276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v5, v7

    .line 7278
    goto :goto_0

    .line 7275
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 7276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 7271
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static storeSortedList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intentType"    # Ljava/lang/String;
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "sortedPackageNames"    # Ljava/lang/String;

    .prologue
    .line 7283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7285
    :cond_0
    const/4 v0, 0x0

    .line 7300
    :goto_0
    return-object v0

    .line 7289
    :cond_1
    sget-object v2, Landroid/provider/Settings$ShareList;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "intent_type=? AND intent_action=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7293
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7294
    .local v1, "vals":Landroid/content/ContentValues;
    const-string v2, "intent_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7295
    const-string/jumbo v2, "package_names"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7296
    const-string v2, "intent_action"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7298
    sget-object v2, Landroid/provider/Settings$ShareList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 7300
    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static updateList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intentType"    # Ljava/lang/String;
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "sortedPackageNames"    # Ljava/lang/String;

    .prologue
    .line 7305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7307
    :cond_0
    const/4 v0, -0x1

    .line 7316
    :goto_0
    return v0

    .line 7310
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7311
    .local v1, "vals":Landroid/content/ContentValues;
    const-string/jumbo v2, "package_names"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7313
    sget-object v2, Landroid/provider/Settings$ShareList;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "intent_type=? AND intent_action=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 7316
    .local v0, "row":I
    goto :goto_0
.end method
