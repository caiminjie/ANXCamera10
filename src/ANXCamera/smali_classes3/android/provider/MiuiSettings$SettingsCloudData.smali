.class public final Landroid/provider/MiuiSettings$SettingsCloudData;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsCloudData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    }
.end annotation


# static fields
.field public static final PRODUCT_DATA:Ljava/lang/String; = "productData"

.field private static final URI_CLOUD_ALL_DATA:Landroid/net/Uri;

.field private static final URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

.field private static final URI_CLOUD_ALL_DATA_SINGLE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6023
    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data"

    .line 6024
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA:Landroid/net/Uri;

    .line 6025
    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/single"

    .line 6026
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA_SINGLE:Landroid/net/Uri;

    .line 6027
    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    .line 6028
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    .line 6027
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defVal"    # Z

    .line 6146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 6147
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_d

    .line 6148
    invoke-virtual {v0, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 6150
    :cond_d
    return p3
.end method

.method public static getCloudDataInt(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defVal"    # I

    .line 6109
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 6110
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_d

    .line 6111
    invoke-virtual {v0, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 6113
    :cond_d
    return p3
.end method

.method public static getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;"
        }
    .end annotation

    .line 6163
    const/4 v0, 0x0

    move-object v1, v0

    .line 6165
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2
    sget-object v3, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 6168
    if-eqz v1, :cond_38

    .line 6169
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 6170
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    .line 6171
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "productData"

    .line 6172
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_34
    .catchall {:try_start_2 .. :try_end_2c} :catchall_32

    move-object v0, v3

    .line 6173
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    nop

    .line 6179
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6173
    return-object v0

    .line 6179
    .end local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_32
    move-exception v0

    goto :goto_3d

    .line 6176
    :catch_34
    move-exception v2

    .line 6177
    .local v2, "e":Ljava/lang/Exception;
    :try_start_35
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_32

    .line 6179
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_38
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6180
    nop

    .line 6181
    return-object v0

    .line 6179
    :goto_3d
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getCloudDataLong(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defVal"    # J

    .line 6128
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 6129
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_d

    .line 6130
    invoke-virtual {v0, p2, p3, p4}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1

    .line 6132
    :cond_d
    return-wide p3
.end method

.method public static getCloudDataNotifyUri()Landroid/net/Uri;
    .registers 1

    .line 6031
    sget-object v0, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    return-object v0
.end method

.method public static getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .registers 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "propertyName"    # Ljava/lang/String;
    .param p4, "cached"    # Z

    .line 6054
    if-eqz p1, :cond_5f

    .line 6057
    if-eqz p4, :cond_11

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    goto :goto_11

    .line 6058
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Want cache, but key or propertyName is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6060
    :cond_11
    :goto_11
    const/4 v0, 0x0

    move-object v1, v0

    .line 6062
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_13
    sget-object v3, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA_SINGLE:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x1

    aput-object p2, v4, v2

    const/4 v2, 0x2

    aput-object p3, v4, v2

    const/4 v2, 0x3

    .line 6063
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6062
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 6065
    if-eqz v1, :cond_56

    .line 6066
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 6067
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_56

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_56

    .line 6068
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "productData"

    .line 6069
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4c} :catch_52
    .catchall {:try_start_13 .. :try_end_4c} :catchall_50

    .line 6075
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6068
    return-object v3

    .line 6075
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_50
    move-exception v0

    goto :goto_5b

    .line 6072
    :catch_52
    move-exception v2

    .line 6073
    .local v2, "e":Ljava/lang/Exception;
    :try_start_53
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_50

    .line 6075
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_56
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6076
    nop

    .line 6077
    return-object v0

    .line 6075
    :goto_5b
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 6055
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "moduleName is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defVal"    # Ljava/lang/String;

    .line 6091
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 6092
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_d

    .line 6093
    invoke-virtual {v0, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6095
    :cond_d
    return-object p3
.end method
