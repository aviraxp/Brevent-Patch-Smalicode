.class public abstract Lcom/android/server/am/ActivityManagerService;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;I)V
    .registers 6
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I

    .prologue
    .line 132
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->cleanUpRemovedTaskLocked$Pr(Lcom/android/server/am/TaskRecord;I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_19

    .line 135
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_15

    .line 136
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 137
    .local v0, "baseIntent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/am/PreventRunningUtils;->onCleanUpRemovedTask(Landroid/content/Intent;)V

    .line 140
    .end local v0    # "baseIntent":Landroid/content/Intent;
    :cond_15
    return-void

    .line 136
    :cond_16
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_f

    .line 135
    :catchall_19
    move-exception v2

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2c

    .line 136
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2d

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 137
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/am/PreventRunningUtils;->onCleanUpRemovedTask(Landroid/content/Intent;)V

    .line 138
    .end local v0    # "baseIntent":Landroid/content/Intent;
    :cond_2c
    throw v2

    .line 136
    :cond_2d
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_26
.end method

.method private cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Z)V
    .registers 5
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z

    .prologue
    .line 108
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->cleanUpRemovedTaskLocked$Pr(Lcom/android/server/am/TaskRecord;Z)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 110
    if-eqz p2, :cond_c

    .line 111
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/PreventRunningUtils;->onCleanUpRemovedTask(Landroid/content/Intent;)V

    .line 114
    :cond_c
    return-void

    .line 110
    :catchall_d
    move-exception v0

    if-eqz p2, :cond_17

    .line 111
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/PreventRunningUtils;->onCleanUpRemovedTask(Landroid/content/Intent;)V

    :cond_17
    throw v0
.end method

.method private cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZI)V
    .registers 6
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 120
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->cleanUpRemovedTaskLocked$Pr(Lcom/android/server/am/TaskRecord;ZI)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 122
    if-eqz p2, :cond_c

    .line 123
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/PreventRunningUtils;->onCleanUpRemovedTask(Landroid/content/Intent;)V

    .line 126
    :cond_c
    return-void

    .line 122
    :catchall_d
    move-exception v0

    if-eqz p2, :cond_17

    .line 123
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/PreventRunningUtils;->onCleanUpRemovedTask(Landroid/content/Intent;)V

    :cond_17
    throw v0
.end method

.method private cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V
    .registers 6
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    .line 96
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->cleanUpRemovedTaskLocked$Pr(Lcom/android/server/am/TaskRecord;ZZ)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 98
    if-eqz p2, :cond_c

    .line 99
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/PreventRunningUtils;->onCleanUpRemovedTask(Landroid/content/Intent;)V

    .line 102
    :cond_c
    return-void

    .line 98
    :catchall_d
    move-exception v0

    if-eqz p2, :cond_17

    .line 99
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/PreventRunningUtils;->onCleanUpRemovedTask(Landroid/content/Intent;)V

    :cond_17
    throw v0
.end method

.method private cleanUpRemovedTaskLocked$Pr(Lcom/android/server/am/TaskRecord;I)V
    .registers 4
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I

    .prologue
    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private cleanUpRemovedTaskLocked$Pr(Lcom/android/server/am/TaskRecord;Z)V
    .registers 4
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z

    .prologue
    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private cleanUpRemovedTaskLocked$Pr(Lcom/android/server/am/TaskRecord;ZI)V
    .registers 5
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z
    .param p3, "flags"    # I

    .prologue
    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private cleanUpRemovedTaskLocked$Pr(Lcom/android/server/am/TaskRecord;ZZ)V
    .registers 5
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private final handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;ZZ)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "restarting"    # Z
    .param p3, "allowRestart"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked$Pr(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 86
    if-nez p2, :cond_e

    if-eqz p3, :cond_e

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_e

    .line 87
    invoke-static {p1}, Lcom/android/server/am/PreventRunningUtils;->onAppDied(Lcom/android/server/am/ProcessRecord;)V

    .line 89
    :cond_e
    return-void
.end method

.method private final handleAppDiedLocked$Pr(Lcom/android/server/am/ProcessRecord;ZZ)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "restarting"    # Z
    .param p3, "allowRestart"    # Z

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .registers 9
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "userId"    # I

    .prologue
    .line 203
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/PreventRunningUtils;->setSender(Landroid/app/IApplicationThread;)V

    .line 204
    invoke-static {p1, p2, p3}, Lcom/android/server/am/PreventRunningUtils;->hookBindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 205
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/ActivityManagerService;->bindService$Pr(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_16

    move-result v0

    .line 211
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    .line 208
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    .line 211
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    goto :goto_10

    :catchall_16
    move-exception v0

    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    throw v0
.end method

.method public bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .registers 10
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/PreventRunningUtils;->setSender(Landroid/app/IApplicationThread;)V

    .line 187
    invoke-static {p1, p2, p3}, Lcom/android/server/am/PreventRunningUtils;->hookBindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 188
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/ActivityManagerService;->bindService$Pr(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_16

    move-result v0

    .line 194
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    .line 191
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    .line 194
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    goto :goto_10

    :catchall_16
    move-exception v0

    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    throw v0
.end method

.method public bindService$Pr(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .registers 9
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "userId"    # I

    .prologue
    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bindService$Pr(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .registers 10
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    .registers 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p5, "resultCode"    # I
    .param p6, "resultData"    # Ljava/lang/String;
    .param p7, "map"    # Landroid/os/Bundle;
    .param p8, "requiredPermission"    # Ljava/lang/String;
    .param p9, "appOp"    # I
    .param p10, "serialized"    # Z
    .param p11, "sticky"    # Z
    .param p12, "userId"    # I

    .prologue
    .line 243
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/PreventRunningUtils;->setSender(Landroid/app/IApplicationThread;)V

    .line 244
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/am/ActivityManagerService;->broadcastIntent$Pr(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    move-result v0

    .line 248
    .local v0, "res":I
    if-nez v0, :cond_c

    .line 249
    invoke-static {p2}, Lcom/android/server/am/PreventRunningUtils;->onBroadcastIntent(Landroid/content/Intent;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 253
    :cond_c
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    .line 251
    return v0

    .line 253
    .end local v0    # "res":I
    :catchall_10
    move-exception v1

    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    throw v1
.end method

.method public final broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .registers 16
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p5, "resultCode"    # I
    .param p6, "resultData"    # Ljava/lang/String;
    .param p7, "resultExtras"    # Landroid/os/Bundle;
    .param p8, "requiredPermissions"    # [Ljava/lang/String;
    .param p9, "appOp"    # I
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .param p11, "serialized"    # Z
    .param p12, "sticky"    # Z
    .param p13, "userId"    # I

    .prologue
    .line 222
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/PreventRunningUtils;->setSender(Landroid/app/IApplicationThread;)V

    .line 223
    invoke-virtual/range {p0 .. p13}, Lcom/android/server/am/ActivityManagerService;->broadcastIntent$Pr(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    .line 228
    .local v0, "res":I
    if-nez v0, :cond_c

    .line 229
    invoke-static {p2}, Lcom/android/server/am/PreventRunningUtils;->onBroadcastIntent(Landroid/content/Intent;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 233
    :cond_c
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    .line 231
    return v0

    .line 233
    .end local v0    # "res":I
    :catchall_10
    move-exception v1

    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    throw v1
.end method

.method public final broadcastIntent$Pr(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    .registers 14
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p5, "resultCode"    # I
    .param p6, "resultData"    # Ljava/lang/String;
    .param p7, "map"    # Landroid/os/Bundle;
    .param p8, "requiredPermission"    # Ljava/lang/String;
    .param p9, "appOp"    # I
    .param p10, "serialized"    # Z
    .param p11, "sticky"    # Z
    .param p12, "userId"    # I

    .prologue
    .line 346
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final broadcastIntent$Pr(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .registers 15
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p5, "resultCode"    # I
    .param p6, "resultData"    # Ljava/lang/String;
    .param p7, "resultExtras"    # Landroid/os/Bundle;
    .param p8, "requiredPermissions"    # [Ljava/lang/String;
    .param p9, "appOp"    # I
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .param p11, "serialized"    # Z
    .param p12, "sticky"    # Z
    .param p13, "userId"    # I

    .prologue
    .line 339
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .registers 3
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->moveActivityTaskToBack$Pr(Landroid/os/IBinder;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 145
    invoke-static {p1}, Lcom/android/server/am/PreventRunningUtils;->onMoveActivityTaskToBack(Landroid/os/IBinder;)V

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public moveActivityTaskToBack$Pr(Landroid/os/IBinder;Z)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z

    .prologue
    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .registers 12
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"    # Landroid/os/Bundle;

    .prologue
    .line 61
    .line 62
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/am/ActivityManagerService;->startActivity$Pr(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 61
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/am/PreventRunningUtils;->onStartActivity(ILandroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
    .registers 13
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profileFile"    # Ljava/lang/String;
    .param p10, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p11, "options"    # Landroid/os/Bundle;

    .prologue
    .line 73
    .line 74
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/am/ActivityManagerService;->startActivity$Pr(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v0

    .line 73
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/am/PreventRunningUtils;->onStartActivity(ILandroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final startActivity$Pr(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .registers 12
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"    # Landroid/os/Bundle;

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final startActivity$Pr(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
    .registers 13
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profileFile"    # Ljava/lang/String;
    .param p10, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p11, "options"    # Landroid/os/Bundle;

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZIZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .registers 16
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "intentFlags"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "hostingName"    # Landroid/content/ComponentName;
    .param p7, "allowWhileBooting"    # Z
    .param p8, "isolated"    # Z
    .param p9, "isolatedUid"    # I
    .param p10, "keepIfLarge"    # Z
    .param p11, "abiOverride"    # Ljava/lang/String;
    .param p12, "entryPoint"    # Ljava/lang/String;
    .param p13, "entryPointArgs"    # [Ljava/lang/String;
    .param p14, "crashHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 32
    invoke-static/range {p1 .. p6}, Lcom/android/server/am/PreventRunningUtils;->hookStartProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    invoke-virtual/range {p0 .. p14}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked$Pr(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZIZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 38
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method final startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;
    .registers 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "intentFlags"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "hostingName"    # Landroid/content/ComponentName;
    .param p7, "allowWhileBooting"    # Z
    .param p8, "isolated"    # Z
    .param p9, "keepIfLarge"    # Z

    .prologue
    .line 47
    invoke-static/range {p1 .. p6}, Lcom/android/server/am/PreventRunningUtils;->hookStartProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked$Pr(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 53
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method final startProcessLocked$Pr(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZIZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .registers 16
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "intentFlags"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "hostingName"    # Landroid/content/ComponentName;
    .param p7, "allowWhileBooting"    # Z
    .param p8, "isolated"    # Z
    .param p9, "isolatedUid"    # I
    .param p10, "keepIfLarge"    # Z
    .param p11, "abiOverride"    # Ljava/lang/String;
    .param p12, "entryPoint"    # Ljava/lang/String;
    .param p13, "entryPointArgs"    # [Ljava/lang/String;
    .param p14, "crashHandler"    # Ljava/lang/Runnable;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final startProcessLocked$Pr(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;
    .registers 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "intentFlags"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "hostingName"    # Landroid/content/ComponentName;
    .param p7, "allowWhileBooting"    # Z
    .param p8, "isolated"    # Z
    .param p9, "keepIfLarge"    # Z

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 171
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/PreventRunningUtils;->setSender(Landroid/app/IApplicationThread;)V

    .line 172
    invoke-static {p1, p2}, Lcom/android/server/am/PreventRunningUtils;->hookStartService(Landroid/app/IApplicationThread;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 173
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->startService$Pr(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_16

    move-result-object v0

    .line 177
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    .line 175
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    .line 177
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    goto :goto_10

    :catchall_16
    move-exception v0

    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    throw v0
.end method

.method public startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/PreventRunningUtils;->setSender(Landroid/app/IApplicationThread;)V

    .line 158
    invoke-static {p1, p2}, Lcom/android/server/am/PreventRunningUtils;->hookStartService(Landroid/app/IApplicationThread;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 159
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActivityManagerService;->startService$Pr(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_16

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    .line 161
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    .line 163
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    goto :goto_10

    :catchall_16
    move-exception v0

    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->clearSender()V

    throw v0
.end method

.method public startService$Pr(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 319
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startService$Pr(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
