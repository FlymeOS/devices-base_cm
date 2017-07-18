.class public abstract Lcom/android/internal/os/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# static fields
.field public static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field public static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextArg()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v1, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    .line 125
    .local v0, "arg":Ljava/lang/String;
    iput-object v3, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    .line 126
    return-object v0

    .line 127
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    aget-object v1, v1, v2

    return-object v1

    .line 130
    :cond_1
    return-object v3
.end method

.method public nextArgRequired()Ljava/lang/String;
    .locals 5

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 142
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public nextOption()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 90
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 92
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    iget-object v3, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 95
    return-object v4

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    aget-object v0, v2, v3

    .line 98
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    return-object v4

    .line 101
    :cond_2
    iget v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    .line 102
    const-string/jumbo v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    return-object v4

    .line 105
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_5

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 110
    :cond_4
    iput-object v4, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    .line 111
    return-object v0

    .line 114
    :cond_5
    iput-object v4, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    .line 115
    return-object v0
.end method

.method public abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onShowUsage(Ljava/io/PrintStream;)V
.end method

.method public run([Ljava/lang/String;)V
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 37
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 38
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 39
    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    .line 43
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->onRun()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 54
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 50
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 51
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 71
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 72
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public showUsage()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 61
    return-void
.end method
