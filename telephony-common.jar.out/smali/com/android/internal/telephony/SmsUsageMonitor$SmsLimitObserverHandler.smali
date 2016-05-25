.class Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserverHandler;
.super Landroid/os/Handler;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsLimitObserverHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsUsageMonitor;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 287
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserverHandler;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 288
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 290
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor;Landroid/os/Handler;Landroid/content/Context;)V

    .line 292
    .local v0, "globalObserver":Landroid/database/ContentObserver;
    const-string v2, "sms_outgoing_check_max_count"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 294
    const-string v2, "sms_outgoing_check_interval_ms"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    return-void
.end method
