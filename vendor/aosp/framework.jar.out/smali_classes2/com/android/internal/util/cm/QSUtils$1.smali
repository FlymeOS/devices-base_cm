.class final Lcom/android/internal/util/cm/QSUtils$1;
.super Landroid/database/ContentObserver;
.source "QSUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/cm/QSUtils;->registerObserverForQSChanges(Landroid/content/Context;Lcom/android/internal/util/cm/QSUtils$OnQSChanged;)Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/android/internal/util/cm/QSUtils$OnQSChanged;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/android/internal/util/cm/QSUtils$OnQSChanged;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 223
    iput-object p2, p0, Lcom/android/internal/util/cm/QSUtils$1;->val$cb:Lcom/android/internal/util/cm/QSUtils$OnQSChanged;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/util/cm/QSUtils$1;->val$cb:Lcom/android/internal/util/cm/QSUtils$OnQSChanged;

    invoke-interface {v0}, Lcom/android/internal/util/cm/QSUtils$OnQSChanged;->onQSChanged()V

    .line 227
    return-void
.end method
