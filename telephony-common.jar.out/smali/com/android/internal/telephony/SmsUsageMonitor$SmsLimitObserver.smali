.class Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;
.super Landroid/database/ContentObserver;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsLimitObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsUsageMonitor;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 263
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 264
    iput-object p3, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;->mContext:Landroid/content/Context;

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;->onChange(Z)V

    .line 266
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;->onChange(ZLandroid/net/Uri;)V

    .line 271
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    const-string v2, "sms_outgoing_check_max_count"

    const/16 v3, 0x1e

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsUsageMonitor;->access$002(Lcom/android/internal/telephony/SmsUsageMonitor;I)I

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;->this$0:Lcom/android/internal/telephony/SmsUsageMonitor;

    const-string v2, "sms_outgoing_check_interval_ms"

    const v3, 0xea60

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsUsageMonitor;->access$102(Lcom/android/internal/telephony/SmsUsageMonitor;I)I

    .line 283
    return-void
.end method
