.class public Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
.super Ljava/lang/Object;
.source "DomainMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;,
        Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
    }
.end annotation


# static fields
.field private static final TestDomains:[Ljava/lang/String;


# instance fields
.field private final mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "garbage.apple.com"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "apple.com"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "com"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "jan.android.google.com."

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "jan.android.google.com"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "android.google.com"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "google.com"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "jan.android.google.net."

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "jan.android.google.net"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "android.google.net"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "google.net"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "net."

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "."

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 121
    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->TestDomains:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "primary":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "secondary":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v2, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    sget-object v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;-><init>(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;)V

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    .line 72
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "secondaryLabel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 73
    .local v0, "secondaryLabel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->Secondary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->-wrap1(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    goto :goto_0

    .line 76
    .end local v0    # "secondaryLabel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->Primary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->-wrap1(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/util/Iterator;Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;)V

    .line 70
    return-void
.end method

.method public static arg2SubdomainOfArg1(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 102
    return v4

    .line 105
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, "l1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    .local v1, "l2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    return v4

    .line 113
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 138
    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    const-string/jumbo v5, "android.google.com"

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 138
    invoke-direct {v0, v5, v6}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 140
    .local v0, "dm1":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
    sget-object v6, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->TestDomains:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v6, v5

    .line 141
    .local v2, "domain":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "domain":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, "secondaries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v5, "apple.com"

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const-string/jumbo v5, "net"

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    const-string/jumbo v5, "android.google.com"

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 147
    .local v1, "dm2":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
    sget-object v5, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->TestDomains:[Ljava/lang/String;

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 148
    .restart local v2    # "domain":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 137
    .end local v2    # "domain":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "domain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    .line 89
    .local v0, "label":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "labelString$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, "labelString":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->-wrap0(Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    move-result-object v0

    .line 91
    if-nez v0, :cond_1

    .line 92
    sget-object v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    return-object v3

    .line 93
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->getMatch()Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    move-result-object v3

    sget-object v4, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    if-eq v3, v4, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;->getMatch()Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    move-result-object v3

    return-object v3

    .line 97
    .end local v1    # "labelString":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Domain matcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->mRoot:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Label;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
