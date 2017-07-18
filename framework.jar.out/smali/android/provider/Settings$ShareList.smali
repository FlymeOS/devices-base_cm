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

.field private static final sPackageNamesProjection:[Ljava/lang/String;

.field private static final sTypeSelection:Ljava/lang/String; = "intent_type=? AND intent_action=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8515
    const-string/jumbo v0, "content://meizu_share/share_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8514
    sput-object v0, Landroid/provider/Settings$ShareList;->CONTENT_URI:Landroid/net/Uri;

    .line 8520
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 8521
    const-string/jumbo v1, "package_names"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 8520
    sput-object v0, Landroid/provider/Settings$ShareList;->sPackageNamesProjection:[Ljava/lang/String;

    .line 8509
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSortedListByType(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intentType"    # Ljava/lang/String;
    .param p2, "intentAction"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 8528
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8529
    :cond_0
    return-object v5

    .line 8532
    :cond_1
    const/4 v8, 0x0

    .line 8533
    .local v8, "pkgNames":Ljava/lang/String;
    sget-object v1, Landroid/provider/Settings$ShareList;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$ShareList;->sPackageNamesProjection:[Ljava/lang/String;

    .line 8534
    const-string/jumbo v3, "intent_type=? AND intent_action=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 8535
    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    move-object v0, p0

    .line 8533
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8538
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 8539
    return-object v5

    .line 8543
    .end local v8    # "pkgNames":Ljava/lang/String;
    :cond_2
    :goto_0
    if-nez v8, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 8545
    :try_start_1
    const-string/jumbo v0, "package_names"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .local v8, "pkgNames":Ljava/lang/String;
    goto :goto_0

    .line 8550
    .end local v8    # "pkgNames":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 8551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8553
    :cond_4
    return-object v8

    .line 8549
    :catchall_0
    move-exception v0

    .line 8550
    if-eqz v6, :cond_5

    .line 8551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8549
    :cond_5
    throw v0

    .line 8546
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static storeSortedList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intentType"    # Ljava/lang/String;
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "sortedPackageNames"    # Ljava/lang/String;

    .prologue
    .line 8558
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8559
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 8558
    if-eqz v2, :cond_1

    .line 8560
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 8564
    :cond_1
    sget-object v2, Landroid/provider/Settings$ShareList;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "intent_type=? AND intent_action=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 8565
    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 8564
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8568
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 8569
    .local v1, "vals":Landroid/content/ContentValues;
    const-string/jumbo v2, "intent_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8570
    const-string/jumbo v2, "package_names"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8571
    const-string/jumbo v2, "intent_action"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8573
    sget-object v2, Landroid/provider/Settings$ShareList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 8575
    .local v0, "uri":Landroid/net/Uri;
    return-object v0
.end method

.method public static updateList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intentType"    # Ljava/lang/String;
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "sortedPackageNames"    # Ljava/lang/String;

    .prologue
    .line 8580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8581
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 8580
    if-eqz v2, :cond_1

    .line 8582
    :cond_0
    const/4 v2, -0x1

    return v2

    .line 8585
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 8586
    .local v1, "vals":Landroid/content/ContentValues;
    const-string/jumbo v2, "package_names"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8588
    sget-object v2, Landroid/provider/Settings$ShareList;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "intent_type=? AND intent_action=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 8589
    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 8588
    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 8591
    .local v0, "row":I
    return v0
.end method
