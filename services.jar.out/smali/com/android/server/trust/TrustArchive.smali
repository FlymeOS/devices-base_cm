.class public Lcom/android/server/trust/TrustArchive;
.super Ljava/lang/Object;
.source "TrustArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustArchive$1;,
        Lcom/android/server/trust/TrustArchive$Event;
    }
.end annotation


# static fields
.field private static final HISTORY_LIMIT:I = 0xc8

.field private static final TYPE_AGENT_CONNECTED:I = 0x4

.field private static final TYPE_AGENT_DIED:I = 0x3

.field private static final TYPE_AGENT_STOPPED:I = 0x5

.field private static final TYPE_GRANT_TRUST:I = 0x0

.field private static final TYPE_MANAGING_TRUST:I = 0x6

.field private static final TYPE_REVOKE_TRUST:I = 0x1

.field private static final TYPE_TRUST_TIMEOUT:I = 0x2


# instance fields
.field mEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/trust/TrustArchive$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    return-void
.end method

.method private addEvent(Lcom/android/server/trust/TrustArchive$Event;)V
    .locals 2
    .param p1, "e"    # Lcom/android/server/trust/TrustArchive$Event;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method private dumpType(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 168
    packed-switch p1, :pswitch_data_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    const-string v0, "GrantTrust"

    goto :goto_0

    .line 172
    :pswitch_1
    const-string v0, "RevokeTrust"

    goto :goto_0

    .line 174
    :pswitch_2
    const-string v0, "TrustTimeout"

    goto :goto_0

    .line 176
    :pswitch_3
    const-string v0, "AgentDied"

    goto :goto_0

    .line 178
    :pswitch_4
    const-string v0, "AgentConnected"

    goto :goto_0

    .line 180
    :pswitch_5
    const-string v0, "AgentStopped"

    goto :goto_0

    .line 182
    :pswitch_6
    const-string v0, "ManagingTrust"

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 2
    .param p0, "duration"    # J

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatElapsed(J)Ljava/lang/String;
    .locals 6
    .param p0, "elapsed"    # J

    .prologue
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, p0, v4

    .line 153
    .local v0, "delta":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v2, v0, v4

    .line 154
    .local v2, "wallTime":J
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p0, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 160
    .local v0, "idx":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v0, :cond_0

    .line 161
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;IILjava/lang/String;Z)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "limit"    # I
    .param p3, "userId"    # I
    .param p4, "linePrefix"    # Ljava/lang/String;
    .param p5, "duplicateSimpleNames"    # Z

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/trust/TrustArchive$Event;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    if-ge v0, p2, :cond_5

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustArchive$Event;

    .line 114
    .local v1, "ev":Lcom/android/server/trust/TrustArchive$Event;
    const/4 v3, -0x1

    if-eq p3, v3, :cond_1

    iget v3, v1, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    if-ne p3, v3, :cond_0

    .line 118
    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    const-string v3, "#%-2d %s %s: "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, v1, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    invoke-static {v6, v7}, Lcom/android/server/trust/TrustArchive;->formatElapsed(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Lcom/android/server/trust/TrustArchive$Event;->type:I

    invoke-direct {p0, v6}, Lcom/android/server/trust/TrustArchive;->dumpType(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 121
    const/4 v3, -0x1

    if-ne p3, v3, :cond_2

    .line 122
    const-string v3, "user="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    :cond_2
    const-string v3, "agent="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    if-eqz p5, :cond_3

    .line 126
    iget-object v3, v1, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    :goto_1
    iget v3, v1, Lcom/android/server/trust/TrustArchive$Event;->type:I

    sparse-switch v3, :sswitch_data_0

    .line 140
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    goto :goto_0

    .line 128
    :cond_3
    iget-object v3, v1, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-static {v3}, Lcom/android/server/trust/TrustArchive;->getSimpleName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :sswitch_0
    const-string v4, ", message=\"%s\", duration=%s, initiatedByUser=%d"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v6, v1, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v3, 0x1

    iget-wide v6, v1, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    invoke-static {v6, v7}, Lcom/android/server/trust/TrustArchive;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    iget-boolean v3, v1, Lcom/android/server/trust/TrustArchive$Event;->userInitiated:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 136
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", managingTrust="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 143
    .end local v1    # "ev":Lcom/android/server/trust/TrustArchive$Event;
    :cond_5
    return-void

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public logAgentConnected(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 90
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v2, 0x4

    const-wide/16 v6, 0x0

    move v3, p1

    move-object v4, p2

    move v9, v8

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 91
    return-void
.end method

.method public logAgentDied(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 86
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v2, 0x3

    const-wide/16 v6, 0x0

    move v3, p1

    move-object v4, p2

    move v9, v8

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 87
    return-void
.end method

.method public logAgentStopped(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 94
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v2, 0x5

    const-wide/16 v6, 0x0

    move v3, p1

    move-object v4, p2

    move v9, v8

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 95
    return-void
.end method

.method public logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JZ)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "userInitiated"    # Z

    .prologue
    .line 73
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 75
    return-void
.end method

.method public logManagingTrust(ILandroid/content/ComponentName;Z)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "managing"    # Z

    .prologue
    const/4 v5, 0x0

    .line 98
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v2, 0x6

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move v3, p1

    move-object v4, p2

    move v9, p3

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 99
    return-void
.end method

.method public logRevokeTrust(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 78
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    move v3, p1

    move-object v4, p2

    move v9, v8

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 79
    return-void
.end method

.method public logTrustTimeout(ILandroid/content/ComponentName;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "agent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 82
    new-instance v1, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v2, 0x2

    const-wide/16 v6, 0x0

    move v3, p1

    move-object v4, p2

    move v9, v8

    move-object v10, v5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JZZLcom/android/server/trust/TrustArchive$1;)V

    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 83
    return-void
.end method
