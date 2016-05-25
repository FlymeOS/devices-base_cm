.class Lcom/android/server/AlarmManagerService$Alarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Alarm"
.end annotation


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public maxWhen:J

.field public final operation:Landroid/app/PendingIntent;

.field public pid:I

.field public priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

.field public repeatInterval:J

.field public final tag:Ljava/lang/String;

.field public final type:I

.field public uid:I

.field public final userId:I

.field public final wakeup:Z

.field public when:J

.field public whenElapsed:J

.field public windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V
    .locals 2
    .param p1, "_type"    # I
    .param p2, "_when"    # J
    .param p4, "_whenElapsed"    # J
    .param p6, "_windowLength"    # J
    .param p8, "_maxWhen"    # J
    .param p10, "_interval"    # J
    .param p12, "_op"    # Landroid/app/PendingIntent;
    .param p13, "_ws"    # Landroid/os/WorkSource;
    .param p14, "_info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p15, "_userId"    # I

    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1732
    iput p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 1733
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    .line 1736
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1737
    iput-wide p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1738
    iput-wide p6, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 1739
    iput-wide p8, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 1740
    iput-wide p10, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1741
    iput-object p12, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 1742
    invoke-static {p12, p1}, Lcom/android/server/AlarmManagerService$Alarm;->makeTag(Landroid/app/PendingIntent;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    .line 1743
    iput-object p13, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 1744
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1745
    move/from16 v0, p15

    iput v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->userId:I

    .line 1746
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 1747
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    .line 1748
    return-void

    .line 1733
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeTag(Landroid/app/PendingIntent;I)Ljava/lang/String;
    .locals 1
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "type"    # I

    .prologue
    .line 1751
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "*walarm*:"

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "*alarm*:"

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowRTC"    # J
    .param p5, "nowELAPSED"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    const/4 v0, 0x1

    .line 1772
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1774
    .local v0, "isRtc":Z
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "tag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "type="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1776
    const-string v1, " whenElapsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1778
    if-eqz v0, :cond_2

    .line 1779
    const-string v1, " when="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1783
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1784
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "window="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1785
    const-string v1, " repeatInterval="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1786
    const-string v1, " count="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1787
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "operation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1788
    return-void

    .line 1772
    .end local v0    # "isRtc":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1781
    .restart local v0    # "isRtc":Z
    :cond_2
    const-string v1, " when="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1757
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1758
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1762
    const-string v1, " when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1764
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1767
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
