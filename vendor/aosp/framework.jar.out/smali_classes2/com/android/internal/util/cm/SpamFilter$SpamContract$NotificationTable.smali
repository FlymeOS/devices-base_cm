.class public final Lcom/android/internal/util/cm/SpamFilter$SpamContract$NotificationTable;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/SpamFilter$SpamContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationTable"
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LAST_BLOCKED:Ljava/lang/String; = "last_blocked"

.field public static final MESSAGE_TEXT:Ljava/lang/String; = "message_text"

.field public static final NORMALIZED_TEXT:Ljava/lang/String; = "normalized_text"

.field public static final PACKAGE_ID:Ljava/lang/String; = "package_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "notifications"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
