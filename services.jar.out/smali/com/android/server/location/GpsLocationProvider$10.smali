.class Lcom/android/server/location/GpsLocationProvider$10;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 1002
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v2

    .line 1009
    .local v2, "time":J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v4

    .line 1010
    .local v4, "timeReference":J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v8

    .line 1011
    .local v8, "certainty":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1013
    .local v12, "now":J
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NTP server returned: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ") reference: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " certainty: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " system time offset: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v6, v2, v12

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    long-to-int v6, v8

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;JJI)V

    .line 1020
    const-wide/32 v10, 0x5265c00

    .line 1026
    .end local v2    # "time":J
    .end local v4    # "timeReference":J
    .end local v8    # "certainty":J
    .end local v12    # "now":J
    .local v10, "delay":J
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v1, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v0, v1, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$10;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1036
    return-void

    .line 1022
    .end local v10    # "delay":J
    :cond_2
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GpsLocationProvider"

    const-string v1, "requestTime failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_3
    const-wide/32 v10, 0x493e0

    .restart local v10    # "delay":J
    goto :goto_0
.end method
