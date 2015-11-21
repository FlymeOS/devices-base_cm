.class public Lcom/android/internal/util/cm/SpamFilter;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/cm/SpamFilter$SpamContract;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.cyanogenmod.spam"

.field public static final MESSAGE_PATH:Ljava/lang/String; = "message"

.field public static final NOTIFICATION_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.cyanogenmod.spam"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/cm/SpamFilter;->NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getNormalizedContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\p{L}\\p{Nd}]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalizedNotificationContent(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/internal/util/cm/SpamFilter;->getNotificationContent(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/cm/SpamFilter;->getNormalizedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNotificationContent(Landroid/app/Notification;)Ljava/lang/String;
    .locals 7
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 50
    .local v0, "extras":Landroid/os/Bundle;
    const-string v5, "android.title.big"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "android.title.big"

    .line 52
    .local v4, "titleExtra":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 53
    .local v3, "notificationTitle":Ljava/lang/CharSequence;
    const-string v5, "android.text"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 55
    .local v2, "notificationMessage":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    const-string v5, "android.textLines"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 57
    .local v1, "inboxLines":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-nez v5, :cond_3

    .line 58
    :cond_0
    const-string v2, ""

    .line 63
    .end local v1    # "inboxLines":[Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 50
    .end local v2    # "notificationMessage":Ljava/lang/CharSequence;
    .end local v3    # "notificationTitle":Ljava/lang/CharSequence;
    .end local v4    # "titleExtra":Ljava/lang/String;
    :cond_2
    const-string v4, "android.title"

    goto :goto_0

    .line 60
    .restart local v1    # "inboxLines":[Ljava/lang/CharSequence;
    .restart local v2    # "notificationMessage":Ljava/lang/CharSequence;
    .restart local v3    # "notificationTitle":Ljava/lang/CharSequence;
    .restart local v4    # "titleExtra":Ljava/lang/String;
    :cond_3
    const-string v5, "\n"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
