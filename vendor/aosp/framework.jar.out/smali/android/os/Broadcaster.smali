.class public Landroid/os/Broadcaster;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Broadcaster$Registration;
    }
.end annotation


# instance fields
.field private mReg:Landroid/os/Broadcaster$Registration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcast(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v9, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    monitor-exit p0

    .line 175
    return-void

    .line 178
    :cond_0
    :try_start_1
    iget v4, p1, Landroid/os/Message;->what:I

    .line 179
    .local v4, "senderWhat":I
    iget-object v5, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 180
    .local v5, "start":Landroid/os/Broadcaster$Registration;
    move-object v3, v5

    .line 182
    .local v3, "r":Landroid/os/Broadcaster$Registration;
    :goto_0
    iget v9, v3, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v9, v4, :cond_2

    .line 187
    :cond_1
    iget v9, v3, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v9, v4, :cond_3

    .line 188
    iget-object v7, v3, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 189
    .local v7, "targets":[Landroid/os/Handler;
    iget-object v8, v3, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 190
    .local v8, "whats":[I
    array-length v2, v7

    .line 191
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 192
    aget-object v6, v7, v0

    .line 193
    .local v6, "target":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 194
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 195
    aget v9, v8, v0

    iput v9, v1, Landroid/os/Message;->what:I

    .line 196
    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "i":I
    .end local v1    # "m":Landroid/os/Message;
    .end local v2    # "n":I
    .end local v6    # "target":Landroid/os/Handler;
    .end local v7    # "targets":[Landroid/os/Handler;
    .end local v8    # "whats":[I
    :cond_2
    iget-object v3, v3, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_3
    monitor-exit p0

    .line 171
    return-void

    .line 173
    .end local v3    # "r":Landroid/os/Broadcaster$Registration;
    .end local v4    # "senderWhat":I
    .end local v5    # "start":Landroid/os/Broadcaster$Registration;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public cancelRequest(ILandroid/os/Handler;I)V
    .locals 10
    .param p1, "senderWhat"    # I
    .param p2, "target"    # Landroid/os/Handler;
    .param p3, "targetWhat"    # I

    .prologue
    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v4, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .local v4, "start":Landroid/os/Broadcaster$Registration;
    move-object v2, v4

    .line 105
    .local v2, "r":Landroid/os/Broadcaster$Registration;
    if-nez v2, :cond_1

    monitor-exit p0

    .line 106
    return-void

    .line 113
    :cond_0
    :try_start_1
    iget-object v2, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 114
    if-eq v2, v4, :cond_2

    .line 110
    :cond_1
    iget v7, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v7, p1, :cond_0

    .line 116
    :cond_2
    iget v7, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v7, p1, :cond_4

    .line 117
    iget-object v5, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 118
    .local v5, "targets":[Landroid/os/Handler;
    iget-object v6, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 119
    .local v6, "whats":[I
    array-length v1, v5

    .line 120
    .local v1, "oldLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 121
    aget-object v7, v5, v0

    if-ne v7, p2, :cond_5

    aget v7, v6, v0

    if-ne v7, p3, :cond_5

    .line 122
    add-int/lit8 v7, v1, -0x1

    new-array v7, v7, [Landroid/os/Handler;

    iput-object v7, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 123
    add-int/lit8 v7, v1, -0x1

    new-array v7, v7, [I

    iput-object v7, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 124
    if-lez v0, :cond_3

    .line 125
    iget-object v7, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v7, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v8, v7, v9, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 129
    :cond_3
    sub-int v7, v1, v0

    add-int/lit8 v3, v7, -0x1

    .line 130
    .local v3, "remainingLen":I
    if-eqz v3, :cond_4

    .line 131
    add-int/lit8 v7, v0, 0x1

    iget-object v8, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v5, v7, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    add-int/lit8 v7, v0, 0x1

    iget-object v8, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v6, v7, v8, v0, v3}, Ljava/lang/System;->arraycopy([II[III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "i":I
    .end local v1    # "oldLen":I
    .end local v3    # "remainingLen":I
    .end local v5    # "targets":[Landroid/os/Handler;
    .end local v6    # "whats":[I
    :cond_4
    monitor-exit p0

    .line 99
    return-void

    .line 120
    .restart local v0    # "i":I
    .restart local v1    # "oldLen":I
    .restart local v5    # "targets":[Landroid/os/Handler;
    .restart local v6    # "whats":[I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    .end local v1    # "oldLen":I
    .end local v2    # "r":Landroid/os/Broadcaster$Registration;
    .end local v4    # "start":Landroid/os/Broadcaster$Registration;
    .end local v5    # "targets":[Landroid/os/Handler;
    .end local v6    # "whats":[I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public dumpRegistrations()V
    .locals 7

    .prologue
    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v3, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 150
    .local v3, "start":Landroid/os/Broadcaster$Registration;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Broadcaster "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    if-eqz v3, :cond_2

    .line 152
    move-object v2, v3

    .line 154
    .local v2, "r":Landroid/os/Broadcaster$Registration;
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    senderWhat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    iget-object v4, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v1, v4

    .line 156
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 157
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "        ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 158
    const-string/jumbo v6, "] "

    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 158
    iget-object v6, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aget-object v6, v6, v0

    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    iget-object v2, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 161
    if-ne v2, v3, :cond_0

    .line 163
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "r":Landroid/os/Broadcaster$Registration;
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 146
    return-void

    .line 148
    .end local v3    # "start":Landroid/os/Broadcaster$Registration;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public request(ILandroid/os/Handler;I)V
    .locals 11
    .param p1, "senderWhat"    # I
    .param p2, "target"    # Landroid/os/Handler;
    .param p3, "targetWhat"    # I

    .prologue
    .line 34
    monitor-enter p0

    .line 35
    const/4 v4, 0x0

    .line 36
    .local v4, "r":Landroid/os/Broadcaster$Registration;
    :try_start_0
    iget-object v8, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-nez v8, :cond_0

    .line 37
    new-instance v5, Landroid/os/Broadcaster$Registration;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$Registration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .local v5, "r":Landroid/os/Broadcaster$Registration;
    :try_start_1
    iput p1, v5, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 39
    .end local v4    # "r":Landroid/os/Broadcaster$Registration;
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/os/Handler;

    iput-object v8, v5, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 40
    const/4 v8, 0x1

    new-array v8, v8, [I

    iput-object v8, v5, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 41
    iget-object v8, v5, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    .line 42
    iget-object v8, v5, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    const/4 v9, 0x0

    aput p3, v8, v9

    .line 43
    iput-object v5, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 44
    iput-object v5, v5, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 45
    iput-object v5, v5, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .end local v5    # "r":Landroid/os/Broadcaster$Registration;
    .local v4, "r":Landroid/os/Broadcaster$Registration;
    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 48
    .local v4, "r":Landroid/os/Broadcaster$Registration;
    :cond_0
    :try_start_2
    iget-object v7, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 49
    .local v7, "start":Landroid/os/Broadcaster$Registration;
    move-object v4, v7

    .line 51
    .local v4, "r":Landroid/os/Broadcaster$Registration;
    :goto_1
    iget v8, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v8, p1, :cond_3

    .line 57
    :cond_1
    iget v8, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-eq v8, p1, :cond_4

    .line 60
    new-instance v6, Landroid/os/Broadcaster$Registration;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v8}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$Registration;)V

    .line 61
    .local v6, "reg":Landroid/os/Broadcaster$Registration;
    iput p1, v6, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 62
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/os/Handler;

    iput-object v8, v6, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 63
    const/4 v8, 0x1

    new-array v8, v8, [I

    iput-object v8, v6, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 64
    iput-object v4, v6, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 65
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v8, v6, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 66
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v6, v8, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 67
    iput-object v6, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 69
    iget-object v8, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-ne v4, v8, :cond_2

    iget v8, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    iget v9, v6, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-le v8, v9, :cond_2

    .line 70
    iput-object v6, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 73
    :cond_2
    move-object v4, v6

    .line 74
    const/4 v1, 0x0

    .line 90
    .end local v6    # "reg":Landroid/os/Broadcaster$Registration;
    .local v1, "n":I
    :goto_2
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, v8, v1

    .line 91
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, v8, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 34
    .end local v1    # "n":I
    .end local v4    # "r":Landroid/os/Broadcaster$Registration;
    .end local v7    # "start":Landroid/os/Broadcaster$Registration;
    :catchall_0
    move-exception v8

    :goto_3
    monitor-exit p0

    throw v8

    .line 54
    .restart local v4    # "r":Landroid/os/Broadcaster$Registration;
    .restart local v7    # "start":Landroid/os/Broadcaster$Registration;
    :cond_3
    :try_start_3
    iget-object v4, v4, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 55
    if-eq v4, v7, :cond_1

    goto :goto_1

    .line 76
    :cond_4
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v1, v8

    .line 77
    .restart local v1    # "n":I
    iget-object v2, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 78
    .local v2, "oldTargets":[Landroid/os/Handler;
    iget-object v3, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 80
    .local v3, "oldWhats":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_6

    .line 81
    aget-object v8, v2, v0

    if-ne v8, p2, :cond_5

    aget v8, v3, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v8, p3, :cond_5

    monitor-exit p0

    .line 82
    return-void

    .line 80
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 85
    :cond_6
    add-int/lit8 v8, v1, 0x1

    :try_start_4
    new-array v8, v8, [Landroid/os/Handler;

    iput-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 86
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v9, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    add-int/lit8 v8, v1, 0x1

    new-array v8, v8, [I

    iput-object v8, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 88
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v9, v8, v10, v1}, Ljava/lang/System;->arraycopy([II[III)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 34
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "oldTargets":[Landroid/os/Handler;
    .end local v3    # "oldWhats":[I
    .end local v4    # "r":Landroid/os/Broadcaster$Registration;
    .end local v7    # "start":Landroid/os/Broadcaster$Registration;
    .restart local v5    # "r":Landroid/os/Broadcaster$Registration;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "r":Landroid/os/Broadcaster$Registration;
    .restart local v4    # "r":Landroid/os/Broadcaster$Registration;
    goto :goto_3
.end method
