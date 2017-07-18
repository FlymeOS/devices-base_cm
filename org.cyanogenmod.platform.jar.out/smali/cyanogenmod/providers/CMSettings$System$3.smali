.class final Lcyanogenmod/providers/CMSettings$System$3;
.super Ljava/lang/Object;
.source "CMSettings.java"

# interfaces
.implements Lcyanogenmod/providers/CMSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 13
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 1748
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1749
    return v11

    .line 1752
    :cond_0
    const-string/jumbo v5, "\\|"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_7

    aget-object v3, v7, v5

    .line 1753
    .local v3, "packageValuesString":Ljava/lang/String;
    const-string/jumbo v9, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1754
    .local v2, "packageValues":[Ljava/lang/String;
    array-length v9, v2

    if-eq v9, v12, :cond_1

    .line 1759
    return v6

    .line 1761
    :cond_1
    aget-object v1, v2, v6

    .line 1762
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1764
    return v6

    .line 1766
    :cond_2
    aget-object v9, v2, v11

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1767
    .local v4, "values":[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    .line 1771
    return v6

    .line 1775
    :cond_3
    :try_start_0
    invoke-static {}, Lcyanogenmod/providers/CMSettings;->-get2()Lcyanogenmod/providers/CMSettings$Validator;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-interface {v9, v10}, Lcyanogenmod/providers/CMSettings$Validator;->validate(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1780
    return v6

    .line 1783
    :cond_4
    invoke-static {}, Lcyanogenmod/providers/CMSettings;->-get3()Lcyanogenmod/providers/CMSettings$Validator;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-interface {v9, v10}, Lcyanogenmod/providers/CMSettings$Validator;->validate(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1788
    return v6

    .line 1791
    :cond_5
    invoke-static {}, Lcyanogenmod/providers/CMSettings;->-get3()Lcyanogenmod/providers/CMSettings$Validator;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-interface {v9, v10}, Lcyanogenmod/providers/CMSettings$Validator;->validate(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_6

    .line 1796
    return v6

    .line 1798
    :catch_0
    move-exception v0

    .line 1799
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v6

    .line 1752
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1803
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageValues":[Ljava/lang/String;
    .end local v3    # "packageValuesString":Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_7
    return v11
.end method
